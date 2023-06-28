import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neomart/view/widget/appImage.dart';

class Everydayneed extends StatefulWidget {
  const Everydayneed({super.key});

  @override
  State<Everydayneed> createState() => _EverydayneedState();
}

class _EverydayneedState extends State<Everydayneed> {
  List items = [
    AppImage.need1,
    AppImage.need2,
    AppImage.need3,
    AppImage.need4,
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Everyday need | Starting \$5",
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
            ),
            Text(
              "Shop Now",
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
            )
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        Container(
          height: 350.h,
          width: double.infinity,
          child: GridView.builder(
            itemCount: 4,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) {
              return Image.asset(items[index]);
            },
          ),
        ),
      ],
    );
  }
}
