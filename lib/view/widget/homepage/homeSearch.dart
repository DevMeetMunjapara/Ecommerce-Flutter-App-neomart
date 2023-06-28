import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neomart/view/widget/appColor.dart';
import 'package:neomart/view/widget/appImage.dart';

class HomeSearch extends StatefulWidget {
  const HomeSearch({super.key});

  @override
  State<HomeSearch> createState() => _HomeSearchState();
}

class _HomeSearchState extends State<HomeSearch> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 45.h,
        child: SizedBox(
          height: 70.h,
          child: TextFormField(
            keyboardType: TextInputType.number,
            cursorColor: AppColor.deepwhite,
            style: TextStyle(
              fontSize: 18.sp,
            ),
            decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 0, horizontal: 20.sp),
                prefixIcon: Container(
                  width: 10.w,
                  child: Center(child: SvgPicture.asset(AppImage.search)),
                ),
                hintStyle: TextStyle(
                  fontSize: 14.sp,
                ),
                hintText: "Search for products",
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.sp),
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 235, 235, 235))),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.sp),
                    borderSide: BorderSide(color: AppColor.deepwhite))),
          ),
        ));
  }
}
