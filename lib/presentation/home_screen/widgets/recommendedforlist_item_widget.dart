import 'package:beatbox/core/app_export.dart';
import 'package:beatbox/data/apiClient/api_client.dart';
import 'package:beatbox/presentation/Playing_now_screen/playing_now_screen.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RecommendedforlistItemWidget extends StatelessWidget {
  Future<Album>? albumFuture;
  final String? Imageurl;
  final int? artistid;
  RecommendedforlistItemWidget({Key? key, required this.albumFuture, this.Imageurl, this.artistid})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: albumFuture?.then((value) => value),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.data == null) {
            return Center(child: Text('No data available'));
          } else {
            final album = snapshot.data as Album;

            print(album);
            // final data = snapshot.data;
            // final paletteGenerator = data?.dominantColor;
            return SizedBox(
              width: 190.h,
              child: Align(
                alignment: Alignment.centerRight,
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: (() {
                        navigator?.pushNamed(AppRoutes.playingnow, arguments: PlayingNowScreen());
                      }),
                      child: Container(
                        height: 189.v,
                        width: 190.h,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                // color: paletteGenerator?.color ?? Colors.grey.withOpacity(0.5),
                                spreadRadius: 0.8,
                                blurRadius: 20,
                                offset: Offset(0, 8),
                              ),
                            ]),
                        child: CustomImageView(
                          imagePath: album.imageUrl, // Assuming 'imageUrl' holds the image URL for the album
                          height: 190.adaptSize,
                          width: 190.adaptSize,
                          fit: BoxFit.cover,
                          radius: BorderRadius.circular(8.h),
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    SizedBox(height: 17.v),
                    Text(
                      album.title,
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 3.v),
                    Text(
                      album.artistName,
                      style: theme.textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
            );
          }
        });
  }
}
