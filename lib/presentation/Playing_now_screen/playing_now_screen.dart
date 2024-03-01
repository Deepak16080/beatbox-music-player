import 'package:beatbox/Constant/app_color.dart';
import 'package:beatbox/core/app_export.dart';
import 'package:beatbox/data/models/deezer_resp.dart';
import 'package:beatbox/widgets/app_bar/appbar_title.dart';
import 'package:beatbox/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:just_audio/just_audio.dart';

// ignore_for_file: must_be_immutable
class PlayingNowScreen extends StatefulWidget {
  final Track? track;
  PlayingNowScreen({Key? key, this.track}) : super(key: key);

  @override
  State<PlayingNowScreen> createState() => _PlayingNowScreenState();
}

class _PlayingNowScreenState extends State<PlayingNowScreen> with SingleTickerProviderStateMixin {
  AnimationController? controller;
  AudioPlayer? audioPlayer;
  bool isPlaying = false;
  Track? selectedtrack;

  // double _progress = 0.0;

  @override
  void initState() {
    super.initState();
    selectedtrack;
    controller = AnimationController(
      duration: Duration(seconds: 10),
      vsync: this,
    )..repeat();

    audioPlayer?.play();
    audioPlayer?.setUrl(selectedtrack?.preview ?? "");
    audioPlayer?.positionStream.listen((event) {});
  }

  void playMusic() {
    audioPlayer = AudioPlayer();
    audioPlayer?.setUrl(selectedtrack?.preview ?? "");
    audioPlayer?.play();
  }

  @override
  void dispose() {
    super.dispose();
    audioPlayer?.dispose();
    controller?.dispose();
    audioPlayer?.stop();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 25.v),
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                children: [
                  _buildWidgetRow(),
                  SizedBox(height: 53.v),
                  _buildControlsRow(),
                  SizedBox(height: 40.v),
                  _buildTimeRow(),
                  SizedBox(height: 27.v),
                  _buildStackOne(),
                  SizedBox(height: 70.v),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 54.h,
      leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_outlined,
            color: iconcolor,
          )),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_playing_now".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildWidgetRow() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 29.h),
        child: Padding(
          padding: EdgeInsets.only(left: 20.h),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Expanded(
                  child: Container(
                    child: CustomImageView(
                      imagePath: ImageConstant.Baarish_Ke_Aane_Se,
                      height: 211.adaptSize,
                      width: 165.adaptSize,
                      fit: BoxFit.cover,
                      radius: BorderRadius.circular(11.h),
                      alignment: Alignment.center,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 24.v),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 220.h,
                  margin: EdgeInsets.only(left: 77.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Text(
                            selectedtrack?.title ?? "",
                            style: CustomTextStyles.headlineSmallMedium,
                          ),
                          SizedBox(height: 4.v),
                          Text(
                            selectedtrack?.artist?.name ?? "",
                            style: CustomTextStyles.bodySmall12,
                          ),
                        ],
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_border,
                            color: iconcolor,
                          ))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildControlsRow() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 29.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.volume_up,
                color: iconcolor,
                size: 25.adaptSize,
              )),
          Spacer(),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.repeat_one,
                color: iconcolor,
                size: 25.adaptSize,
              )),
          IconButton(
              onPressed: () {},
              icon: FaIcon(
                FontAwesomeIcons.shuffle,
                color: iconcolor,
                size: 21.adaptSize,
              )),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTimeRow() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 29.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_00_00".tr,
            style: CustomTextStyles.bodySmall12,
          ),
          Text(
            "lbl_04_00".tr,
            style: CustomTextStyles.bodySmall12,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStackOne() {
    return SizedBox(
      height: 18.v,
      width: 319.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 18.v,
              width: 16.h,
              decoration: BoxDecoration(
                color: appTheme.whiteA700,
                borderRadius: BorderRadius.circular(
                  9.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 4.v,
              width: 317.h,
              margin: EdgeInsets.only(bottom: 5.v),
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Container(
                    height: 4.v,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: appTheme.whiteA700.withOpacity(0.31),
                    ),
                    child: ClipRRect(
                      child: LinearProgressIndicator(
                        borderRadius: BorderRadius.circular(
                          2.v,
                        ),
                        value: 0,
                        backgroundColor: appTheme.whiteA700.withOpacity(0.31),
                        valueColor: AlwaysStoppedAnimation<Color>(
                          appTheme.whiteA700,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(50),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.skip_previous_outlined,
                              color: iconcolor,
                              size: 40.adaptSize,
                            )),
                        Spacer(),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                playMusic();
                                isPlaying = !isPlaying;
                              });
                            },
                            icon: Icon(
                              isPlaying ? Icons.pause_outlined : Icons.play_arrow,
                              color: iconcolor,
                              size: 40.adaptSize,
                            )),
                        Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.skip_next_outlined,
                              color: iconcolor,
                              size: 40.adaptSize,
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WaveformPainter extends CustomPainter {
  final List<int> waveform;

  WaveformPainter(this.waveform);

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 2.0;

    if (waveform.isNotEmpty) {
      final double dx = size.width / waveform.length;
      for (int i = 0; i < waveform.length - 1; i++) {
        final double x1 = i * dx;
        final double y1 = (waveform[i] / 255) * size.height;
        final double x2 = (i + 1) * dx;
        final double y2 = (waveform[i + 1] / 255) * size.height;
        canvas.drawLine(Offset(x1, y1), Offset(x2, y2), paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
