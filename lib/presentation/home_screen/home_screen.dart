import 'package:beatbox/core/app_export.dart';
import 'package:beatbox/data/apiClient/api_client.dart';
import 'package:beatbox/presentation/options_draweritem/options_draweritem.dart';
import 'package:beatbox/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../../data/models/deezer_resp.dart';
import '../home_screen/widgets/recommendedforlist_item_widget.dart';

class Homescreen extends StatefulWidget {
  Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  List<Track> tracks = [];

  @override
  void initState() {
    super.initState();
    getTracks();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2), // Animation duration
    )..repeat();
  }

  Future<void> getTracks() async {
    final tracks = await MusicAPI().fetchAlbumTracks();

    this.tracks = tracks;
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: OptionsDraweritem(),
        key: _scaffoldKey,
        appBar: _buildAppBar(context),
        bottomNavigationBar: _buildComponentTwoStack(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 17.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 28.h),
                  child: Text(
                    "msg_recommended_for".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
                SizedBox(height: 17.v),
                _buildRecommendedForList(),
                SizedBox(height: 43.v),
                SizedBox(
                  height: 472.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    fit: StackFit.loose,
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 28.h,
                            bottom: 120.v,
                          ),
                          child: Text(
                            "lbl_popular_artists".tr,
                            style: theme.textTheme.headlineSmall,
                          ),
                        ),
                      ),
                      _buildHomeRow(),
                      // Padding(
                      //   padding: EdgeInsets.only(left: 30.h,),
                      //   child: _buildPopularArtistsStack(
                      //     userImage: ImageConstant.artist1,
                      //     userName: "lbl_drake".tr,
                      //   ),
                      // ),
                      // Padding(
                      //   padding: EdgeInsets.only(left: 134.h),
                      //   child: _buildPopularArtistsStack(
                      //     userImage: ImageConstant.artist1,
                      //     userName: "lbl_taylor_swift".tr,
                      //   ),
                      // ),
                      // Padding(
                      //   padding: EdgeInsets.only(right: 42.h),
                      //   child: _buildPopularArtistsStack(
                      //     userImage: ImageConstant.artist1,
                      //     userName: "lbl_cardi_b".tr,
                      //   ),
                      // ),

                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 42.v,
                          width: double.maxFinite,
                          margin: EdgeInsets.only(bottom: 84.v),
                          decoration: BoxDecoration(
                            color: appTheme.gray900,
                          ),
                        ),
                      ),
                      _buildUserProfileList(),
                    ],
                  ),
                ),
                SizedBox(height: 24.v),
                _buildHomeRow(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 55.h,
      leading: IconButton(
        icon: Image.asset(
          ImageConstant.menubutton,
          height: 20.h,
          width: 24.h,
        ),
        onPressed: () {
          _scaffoldKey.currentState!.openDrawer();
        },
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Image.asset(
              ImageConstant.search,
              height: 20.h,
              width: 24.h,
            )),
      ],
    );
  }

  /// Section Widget
  Widget _buildRecommendedForList() {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 250.v,
        child: ListView.builder(
          padding: EdgeInsets.only(left: 28.h),
          scrollDirection: Axis.horizontal,
          itemCount: tracks.length,
          itemBuilder: (context, index) {
            return RecommendedforlistItemWidget(track: tracks[index]);
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildComponentTwoStack() {
    return Container(
      height: 110.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(top: 8.v),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.artist1,
                    height: 66.adaptSize,
                    width: 66.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 11.h,
                      top: 12.v,
                      bottom: 12.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_chaff_dust".tr,
                          style: CustomTextStyles.titleMedium18_1,
                        ),
                        SizedBox(height: 5.v),
                        Text(
                          "lbl_hyonna".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 28.h),
                    child: Icon(
                      Icons.skip_previous_outlined,
                      color: appTheme.blue5001,
                      size: 24.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 28.h),
                    child: Icon(
                      Icons.play_arrow,
                      color: appTheme.blue5001,
                      size: 24.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 28.h),
                    child: Icon(
                      Icons.skip_next_outlined,
                      color: appTheme.blue5001,
                      size: 24.h,
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 8.v),
              child: Container(
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
                    value: _animationController.value,
                    backgroundColor: appTheme.whiteA700.withOpacity(0.31),
                    valueColor: AlwaysStoppedAnimation<Color>(
                      appTheme.whiteA700,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 16.adaptSize,
              width: 16.adaptSize,
              margin: EdgeInsets.only(right: 168.h),
              decoration: BoxDecoration(
                color: appTheme.whiteA700,
                borderRadius: BorderRadius.circular(
                  8.h,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileList() {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: EdgeInsets.only(left: 28.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "lbl_my_playlist".tr,
              style: theme.textTheme.headlineSmall,
            ),
            SizedBox(height: 17.v),
            SizedBox(
              height: 250.v,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: tracks.length,
                itemBuilder: (context, index) {
                  final track = tracks[index];
                  return RecommendedforlistItemWidget(track: track);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHomeRow() {
    return Padding(
      padding: EdgeInsets.only(
        left: 28.h,
        right: 42.h,
      ),
      child: Row(
        children: [
          _buildPopularArtistsStack(
            userImage: ImageConstant.artist1,
            userName: "lbl_eminem".tr,
          ),
          Padding(
            padding: EdgeInsets.only(left: 14.h),
            child: _buildPopularArtistsStack(
              userImage: ImageConstant.artist1,
              userName: "lbl_morgan_wallen".tr,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 14.h),
            child: _buildPopularArtistsStack(
              userImage: ImageConstant.artist1,
              userName: "lbl_dababy".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildPopularArtistsStack({
    required String userImage,
    required String userName,
  }) {
    return SizedBox(
      height: 92.adaptSize,
      width: 92.adaptSize,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: userImage,
            height: 92.adaptSize,
            width: 92.adaptSize,
            radius: BorderRadius.circular(
              8.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 6.v),
              child: Text(
                userName,
                textAlign: TextAlign.center,
                style: theme.textTheme.labelLarge!.copyWith(
                  color: appTheme.blue5001,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
