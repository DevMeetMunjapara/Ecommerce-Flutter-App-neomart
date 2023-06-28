import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neomart/view/widget/appImage.dart';

class AllCategory extends StatefulWidget {
  const AllCategory({super.key});

  @override
  State<AllCategory> createState() => _AllCategoryState();
}

class _AllCategoryState extends State<AllCategory> {
  List item = [
    [AppImage.fashion, "Fashion"],
    [AppImage.electronics, "Electronics"],
    [AppImage.mobile, "Mobile"],
    [AppImage.appliances, "Appliances"],
    [AppImage.offer, "Offer"],
    [AppImage.grocery, "Grocery"],
    [AppImage.baby, "Baby Product"],
    [AppImage.travel, "Travel"],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60.h,
        backgroundColor: Color.fromARGB(255, 245, 245, 247),
        elevation: 0.5,
        title: Padding(
          padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.keyboard_arrow_left,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 15.w,
              ),
              Text(
                "All Categories",
                style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
          padding: EdgeInsets.all(20.h),
          child: Container(
            height: 400.h,
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 8,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 40.sp,
                  crossAxisSpacing: 10.sp),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      height: 80.h,
                      padding: EdgeInsets.all(10.h),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          border: Border.all(
                              color: Color.fromARGB(255, 228, 228, 228))),
                      child: Image.asset(
                        item[index][0],
                        height: 60.h,
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(item[index][1])
                  ],
                );
              },
            ),
          )),
    );
  }
}
