import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neomart/view/widget/appColor.dart';
import 'package:neomart/view/widget/appImage.dart';

class HomeRecently extends StatefulWidget {
  const HomeRecently({super.key});

  @override
  State<HomeRecently> createState() => _HomeRecentlyState();
}

class _HomeRecentlyState extends State<HomeRecently> {
  List items = [
    [
      AppImage.fashion,
      "PUMA Women Printed Bomber Jacket",
      "Electronics",
      "29.99",
      "45.00"
    ],
    [
      AppImage.fashion,
      "PUMA Women Printed Bomber Jacket",
      "Electronics",
      "29.99",
      "45.00"
    ],
    [
      AppImage.fashion,
      "PUMA Women Printed Bomber Jacket",
      "Electronics",
      "29.99",
      "45.00"
    ],
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
                "You Viewed\nRecently",
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
            height: 210.w,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return HomeRecentlyItem(items[index][0], items[index][1],
                    items[index][2], items[index][3], items[index][4]);
              },
            ),
          )
        ],
      ),
    );
  }

  Widget HomeRecentlyItem(String img, title, catagory, price, discount) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(10.h),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15.r)),
          width: 160.w,
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
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
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
            ],
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
      ],
    );
  }
}
