import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neomart/view/widget/appColor.dart';
import 'package:neomart/view/widget/appImage.dart';

class HomeSponsored extends StatefulWidget {
  const HomeSponsored({super.key});

  @override
  State<HomeSponsored> createState() => _HomeSponsoredState();
}

class _HomeSponsoredState extends State<HomeSponsored> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20.h,
        ),
        Text(
          "Sponsored Products",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            HomeSugeestItem(
              false,
              AppImage.tab,
              "SAMSUNG Galaxy Tab S6 Lite With Stylus",
              "Electronics",
              "299.99",
              "300.00",
              4.8,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                homeSponsoredItemSmall(
                  false,
                  AppImage.tab,
                  "SAMSUNG Galaxy Tab S6 Lite With Stylus",
                  "Electronics",
                  "299.99",
                  "300.00",
                  4.8,
                ),
                SizedBox(
                  height: 20.w,
                ),
                homeSponsoredItemSmall(
                  false,
                  AppImage.tab,
                  "SAMSUNG Galaxy Tab S6 Lite With Stylus",
                  "Electronics",
                  "299.99",
                  "300.00",
                  4.8,
                ),
              ],
            )
          ],
        )
      ],
    );
  }

  Widget HomeSugeestItem(
    bool like,
    String img,
    String title,
    String catagory,
    String price,
    String discount,
    double rating,
  ) {
    return Container(
      padding: EdgeInsets.all(10.h),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15.r)),
      width: 210.w,
      height: 290.h,
      child: Column(
        children: [
          Container(
            child: Padding(
              padding: EdgeInsets.only(top: 10.h, right: 10.h),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 30.h,
                  width: 30.h,
                  child: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 245, 245, 245),
                    child: SvgPicture.asset(
                      AppImage.heart,
                      color: Colors.red,
                      height: 20.h,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 100.h,
                  child: Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      img,
                      width: 100.h,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 40.h,
                  child: Text(
                    title,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  catagory,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColor.deepwhite,
                      fontSize: 16.sp),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Text(
                      price,
                      style: TextStyle(
                          fontSize: 16.sp, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      "USD",
                      style:
                          TextStyle(fontSize: 16.sp, color: AppColor.deepwhite),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      discount,
                      style: TextStyle(
                          fontSize: 16.sp,
                          decoration: TextDecoration.lineThrough,
                          color: Colors.red),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget homeSponsoredItemSmall(
    bool like,
    String img,
    String title,
    String catagory,
    String price,
    String discount,
    double rating,
  ) {
    return Container(
      padding: EdgeInsets.all(10.h),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15.r)),
      width: 90.w,
      height: 130.h,
      child: Column(
        children: [
          Container(
            child: Padding(
              padding: EdgeInsets.only(top: 2.h, right: 2.h),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 15.h,
                  width: 15.h,
                  child: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 245, 245, 245),
                    child: SvgPicture.asset(
                      AppImage.heart,
                      color: Colors.red,
                      height: 10.h,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 30.h,
                  child: Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      img,
                      width: 25.h,
                    ),
                  ),
                ),
                SizedBox(
                  height: 7.h,
                ),
                Container(
                  height: 25.h,
                  child: Text(
                    title,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 10.sp,
                    ),
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Text(
                  catagory,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColor.deepwhite,
                      fontSize: 8.sp),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  children: [
                    Text(
                      price,
                      style: TextStyle(
                          fontSize: 7.sp, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      "USD",
                      style:
                          TextStyle(fontSize: 7.sp, color: AppColor.deepwhite),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      discount,
                      style: TextStyle(
                          fontSize: 7.sp,
                          decoration: TextDecoration.lineThrough,
                          color: Colors.red),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
