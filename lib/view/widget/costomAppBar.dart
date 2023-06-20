import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neomart/view/widget/appImage.dart';

class CostomAppBar {
  AppBar AppbarWithTitle(String title) {
    return AppBar(
      elevation: 0,
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      leading: Padding(
        padding: EdgeInsets.only(left: 10.sp, top: 15.sp),
        child: Icon(
          Icons.keyboard_arrow_left,
          color: Colors.black,
          size: 28.sp,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 5.sp, top: 15.sp),
        child: Text(
          title,
          style: TextStyle(color: Colors.black, fontSize: 16.sp),
        ),
      ),
    );
  }

  AppBar HomeAppbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      title: Padding(
          padding: EdgeInsets.only(left: 10.sp, top: 25.sp),
          child: SvgPicture.asset(
            AppImage.logo,
            height: 18.sp,
          )),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 30.sp, top: 25.sp),
          child: SvgPicture.asset(AppImage.bag),
        )
      ],
    );
  }
}
