import 'package:f_38/constant/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routemaster/routemaster.dart';

class AddPostPage extends ConsumerWidget {
  const AddPostPage({super.key});

  void navigateToType(BuildContext context, String type) {
    Routemaster.of(context).push('/add-post/$type');
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double cardHeightWidth = 120;
    double iconSize = 60;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.AppColor,
        title: Text(
          "Gönderi oluştur",
          style: MyTextConstant.myCustomTextStyleWhite,
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () => navigateToType(context, 'fotograf'),
                child: SizedBox(
                  height: cardHeightWidth,
                  width: cardHeightWidth,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: ColorConstants.AppColor,
                    elevation: 16,
                    child: Center(
                      child: Icon(
                        Icons.image_outlined,
                        size: iconSize,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => navigateToType(context, 'yazi'),
                child: SizedBox(
                  height: cardHeightWidth,
                  width: cardHeightWidth,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: ColorConstants.AppColor,
                    elevation: 16,
                    child: Center(
                      child: Icon(
                        Icons.font_download_outlined,
                        size: iconSize,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => navigateToType(context, 'link'),
                child: SizedBox(
                  height: cardHeightWidth,
                  width: cardHeightWidth,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: ColorConstants.AppColor,
                    elevation: 16,
                    child: Center(
                      child: Icon(
                        Icons.link_outlined,
                        size: iconSize,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
