import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neomart/widget/CostomButton.dart';
import 'package:neomart/widget/appColor.dart';
import 'package:neomart/widget/appImage.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "Skip",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp),
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            SvgPicture.asset(
              AppImage.logo,
              height: 18.h,
            ),
            SizedBox(
              height: 40.h,
            ),
            Text(
              "login",
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
            Form(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                SizedBox(
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
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "PASSWORD",
                  style: TextStyle(
                      color: AppColor.deepwhite,
                      fontWeight: FontWeight.w800,
                      fontSize: 12.sp),
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
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
                        hintText: "Enter Your Password",
                        hintStyle: TextStyle(
                            color: AppColor.deepwhite, fontSize: 14.sp)),
                  ),
                )
              ],
            )),
            SizedBox(
              height: 30.h,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "Forgot password?",
                style: TextStyle(color: AppColor.deepwhite),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            CostomButton(
                title: "Login", onPressed: () {}, mycolors: AppColor.deepwhite),
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 100.w,
                  child: Flex(
                    children: List.generate(15, (_) {
                      return SizedBox(
                        width: 5,
                        height: 1,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 224, 224, 224)),
                        ),
                      );
                    }),
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    direction: Axis.horizontal,
                  ),
                ),
                Text(
                  "or continue with",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 100.w,
                  child: Flex(
                    children: List.generate(15, (_) {
                      return SizedBox(
                        width: 5,
                        height: 1,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 224, 224, 224)),
                        ),
                      );
                    }),
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    direction: Axis.horizontal,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(15.r),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      border: Border.all(
                          color: Color.fromARGB(137, 194, 194, 194))),
                  child: SvgPicture.asset(
                    AppImage.apple,
                    height: 25.sp,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15.r),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      border: Border.all(
                          color: Color.fromARGB(137, 194, 194, 194))),
                  child: SvgPicture.asset(
                    AppImage.facebook,
                    height: 25.sp,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15.r),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      border: Border.all(
                          color: Color.fromARGB(137, 194, 194, 194))),
                  child: SvgPicture.asset(
                    AppImage.google,
                    height: 25.sp,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don’t have an account? ",
                  style: TextStyle(color: AppColor.deepwhite),
                ),
                Text(
                  "Sign Up",
                  style:
                      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
