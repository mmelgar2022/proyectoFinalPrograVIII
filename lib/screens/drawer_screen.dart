import 'package:flutter/material.dart';
import 'package:movies_app_flutter/widgets/colored_circle.dart';
import 'package:movies_app_flutter/widgets/drawer_item.dart';
import 'package:sizer/sizer.dart';
import 'package:movies_app_flutter/utils/constants.dart';
import 'package:movies_app_flutter/utils/file_manager.dart' as file;

class DrawerScreen extends StatelessWidget {
  final Function(Color) colorChanged;
  DrawerScreen({required this.colorChanged});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: kPrimaryColor,
        child: Padding(
          padding:
              EdgeInsets.only(top: 10.h, left: 6.w, right: 6.w, bottom: 5.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 5.h,
              ),
              DrawerItem(
                title: kDrawerTitleSecondText,
                desc: kDrawerAboutDescText,
              ),
              SizedBox(
                height: 5.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
