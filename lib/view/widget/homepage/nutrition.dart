import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neomart/view/widget/appColor.dart';
import 'package:neomart/view/widget/appImage.dart';

class Nutrition extends StatefulWidget {
  const Nutrition({super.key});

  @override
  State<Nutrition> createState() => _NutritionState();
}

class _NutritionState extends State<Nutrition> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Nutrition & wellness\nsupplements",
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
              ),
              Text(
                "See All",
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              HomeSugeestItem(
                true,
                AppImage.mass1,
                "Noise Icon Buzz BT Calling with 1.69\" display",
                "Electronics",
                "19.99",
                "25.00",
                4.5,
              ),
              HomeSugeestItem(
                false,
                AppImage.mass2,
                "boAt Airdopes 161 with ASAP Charge",
                "Electronics",
                "14.99",
                "20.00",
                4.8,
              )
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              HomeSugeestItem(
                true,
                AppImage.mass3,
                "Canon EOS 3000D DSLR Camera ",
                "Electronics",
                "349.99",
                "500.00",
                4.5,
              ),
              HomeSugeestItem(
                false,
                AppImage.mass4,
                "SAMSUNG Galaxy Tab S6 Lite With Stylus",
                "Electronics",
                "299.99",
                "300.00",
                4.8,
              ),
            ],
          ),
        ],
      ),
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
      width: 160.w,
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
                      height: 15.h,
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
                  height: 80.h,
                  child: Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      img,
                      width: 80.h,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 30.h,
                  child: Text(
                    title,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 13.sp,
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
                      fontSize: 12.sp),
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
                          TextStyle(fontSize: 12.sp, color: AppColor.deepwhite),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      discount,
                      style: TextStyle(
                          fontSize: 14.sp,
                          decoration: TextDecoration.lineThrough,
                          color: Colors.red),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                RatingBar.builder(
                  initialRating: rating,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 18.sp,
                  itemBuilder: (context, _) => Container(
                    child: Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
