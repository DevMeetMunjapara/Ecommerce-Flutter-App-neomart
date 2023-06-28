import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:neomart/view/Pages/allCategory.dart';
import 'package:neomart/view/Pages/home.dart';
import 'package:neomart/view/login%20&%20singUp/changePassword.dart';
import 'package:neomart/view/login%20&%20singUp/forgot.dart';
import 'package:neomart/view/login%20&%20singUp/otp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              fontFamily: "Urbanist",
              scaffoldBackgroundColor: Color.fromARGB(255, 245, 245, 247)),
          // home: splashScreen(),
          home: AllCategory(),
        );
      },
    );
  }
}
