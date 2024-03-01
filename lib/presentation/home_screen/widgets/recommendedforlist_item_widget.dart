import 'package:beatbox/core/app_export.dart';
import 'package:beatbox/data/models/deezer_resp.dart';
import 'package:beatbox/presentation/Playing_now_screen/playing_now_screen.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:palette_generator/palette_generator.dart';

final audioPlayer = AudioPlayer();

// ignore: must_be_immutable
class RecommendedforlistItemWidget extends StatelessWidget {
  final Track? track;
  RecommendedforlistItemWidget({Key? key, this.track}) : super(key: key);
  PaletteGenerator? paletteGenerator;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 190.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Column(
          children: [
            GestureDetector(
              onTap: (() {
                navigator?.pushNamed(AppRoutes.playingnow,
                    arguments: PlayingNowScreen(
                      track: track,
                    ));
              }),
              child: Container(
                height: 189.v,
                width: 190.h,
                decoration:
                    BoxDecoration(color: Colors.transparent, borderRadius: BorderRadius.circular(10), boxShadow: [
                  BoxShadow(
                    color: paletteGenerator?.dominantColor?.color ?? Colors.grey.withOpacity(0.5),
                    spreadRadius: 0.8,
                    blurRadius: 20,
                    offset: Offset(0, 8),
                  ),
                ]),
                child: CustomImageView(
                  imagePath: track?.album?.coverMedium,
                  height: 190.adaptSize,
                  width: 190.adaptSize,
                  fit: BoxFit.cover,
                  radius: BorderRadius.circular(8.h),
                  alignment: Alignment.center,
                ),
              ),
            ),
            SizedBox(height: 17.v),
            Flexible(
              flex: 1,
              child: Text(
                track?.title ?? "",
                style: theme.textTheme.titleMedium,
              ),
            ),
            SizedBox(height: 3.v),
            Text(
              track?.artist?.name ?? "",
              style: theme.textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
