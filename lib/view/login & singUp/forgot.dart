import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:neomart/view/widget/CostomButton.dart';
import 'package:neomart/view/widget/appImage.dart';

import '../widget/appColor.dart';

class Forgot extends StatefulWidget {
  const Forgot({super.key});

  @override
  State<Forgot> createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          left: 20.w,
          right: 20.w,
          top: 50.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
            ),
            CircleAvatar(
              backgroundColor: AppColor.deepwhite,
              maxRadius: 20,
              child: CircleAvatar(
                  maxRadius: 19.5,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.keyboard_arrow_left,
                    color: Colors.black,
                  )),
            ),
            SizedBox(
              height: 40.h,
            ),
            SvgPicture.asset(
              AppImage.logo,
              height: 18.h,
            ),
            SizedBox(
              height: 50.h,
            ),
            Text(
              "Forgot Password",
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18.sp),
            ),
            SizedBox(
              height: 7.h,
            ),
            Text(
              "This code help to keep your account safe",
              style: TextStyle(
                  color: AppColor.deepwhite,
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp),
            ),
            SizedBox(
              height: 40.h,
            ),
            Text(
              "EMAIL ID",
              style: TextStyle(
                  color: AppColor.deepwhite,
                  fontWeight: FontWeight.w800,
                  fontSize: 12.sp),
            ),
            SizedBox(
              height: 10.h,
            ),
            Form(
              child: SizedBox(
                height: 50.h,
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: AppColor.deepwhite,
                  cursorWidth: 0.7.w,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColor.deepwhite)),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColor.deepwhite)),
                      hintText: "Enter Associated Account Email Id",
                      hintStyle: TextStyle(
                          color: AppColor.deepwhite, fontSize: 14.sp)),
                ),
              ),
            ),
            SizedBox(
              height: 80.h,
            ),
            CostomButton(
                title: "Send otp",
                onPressed: () {},
                mycolors: AppColor.deepwhite),
          ],
        ),
      ),
    );
  }
}
