import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neomart/view/widget/appImage.dart';

class HomeCategory extends StatefulWidget {
  const HomeCategory({super.key});

  @override
  State<HomeCategory> createState() => HomeCcategoryState();
}

class HomeCcategoryState extends State<HomeCategory> {
  List item = [
    [AppImage.fashion, "Fashion"],
    [AppImage.electronics, "Electronics"],
    [AppImage.mobile, "Mobile"],
    [AppImage.appliances, "Appliances"],
    [AppImage.offer, "Offer"],
    [AppImage.grocery, "Grocery"],
    [AppImage.furniture, "Furniture"],
    [AppImage.travel, "Travel"],
  ];
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
                "Shop by\nCategory",
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
          Container(
            height: 200.h,
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 8,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 20.sp,
                  crossAxisSpacing: 10.sp),
              itemBuilder: (context, index) {
                return category(item[index][0], item[index][1]);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget category(String img, String title) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15.r)),
      padding: EdgeInsets.all(5.r),
      height: 90.h,
      width: 75.w,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              img,
              height: 40.h,
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
