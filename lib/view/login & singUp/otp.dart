import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neomart/view/widget/CostomButton.dart';
import 'package:neomart/view/widget/appColor.dart';
import 'package:pinput/pinput.dart';

import '../widget/appImage.dart';

class OTP extends StatefulWidget {
  const OTP({super.key});

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  TextEditingController otpConttrolor = TextEditingController();
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
            SizedBox(
              height: 25.h,
            ),
            SvgPicture.asset(
              AppImage.logo,
              height: 18.h,
            ),
            SizedBox(
              height: 50.h,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Confirm Your Code",
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18.sp),
              ),
            ),
            SizedBox(
              height: 7.h,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "This code help to keep your account safe",
                style: TextStyle(
                    color: AppColor.deepwhite,
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Pinput(
              controller: otpConttrolor,
              length: 6,
            ),
            SizedBox(
              height: 20.h,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "Resend OTP",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp),
              ),
            ),
            SizedBox(
              height: 80.h,
            ),
            CostomButton(
                title: "Confirm & Continue",
                onPressed: () {},
                mycolors: AppColor.deepwhite),
          ],
        ),
      ),
    );
  }
}
