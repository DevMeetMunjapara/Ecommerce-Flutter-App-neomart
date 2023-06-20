import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neomart/view/widget/CostomButton.dart';
import 'package:neomart/view/widget/appColor.dart';
import 'package:neomart/view/widget/costomAppBar.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CostomAppBar().AppbarWithTitle("Create new password"),
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
              height: 30.h,
            ),
            Text(
              "New Password",
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18.sp),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Create a new password for your account",
              style: TextStyle(
                  color: AppColor.deepwhite,
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp),
            ),
            SizedBox(
              height: 30.h,
            ),
            Form(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "New Password",
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
                        hintText: "Enter Your New Password",
                        hintStyle: TextStyle(
                            color: AppColor.deepwhite, fontSize: 14.sp)),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "Conform Password",
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
                        hintText: "Re-Enter Your Password",
                        hintStyle: TextStyle(
                            color: AppColor.deepwhite, fontSize: 14.sp)),
                  ),
                )
              ],
            )),
            SizedBox(
              height: 50.h,
            ),
            CostomButton(
                title: "Submit", onPressed: () {}, mycolors: AppColor.deepwhite)
          ],
        ),
      ),
    );
  }
}
