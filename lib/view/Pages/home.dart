import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neomart/view/widget/appColor.dart';
import 'package:neomart/view/widget/appImage.dart';
import 'package:neomart/view/widget/costomAppBar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CostomAppBar().HomeAppbar(),
      body: Container(
        padding: EdgeInsets.only(
          left: 20.w,
          right: 20.w,
          top: 20.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
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
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 0, horizontal: 20.sp),
                        prefixIcon: Container(
                          width: 10.w,
                          child:
                              Center(child: SvgPicture.asset(AppImage.search)),
                        ),
                        hintStyle: TextStyle(
                          fontSize: 14.sp,
                        ),
                        hintText: "Search for products",
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.sp),
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 235, 235, 235))),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.sp),
                            borderSide: BorderSide(color: AppColor.deepwhite))),
                  ),
                )),
            SizedBox(
              height: 10.h,
            ),
            Container(
              width: double.infinity,
              height: 120.h,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(AppImage.discount))),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Category",
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                ),
                Text(
                  "See All",
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
