import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neomart/view/widget/appImage.dart';

class ClothingCombos extends StatefulWidget {
  const ClothingCombos({super.key});

  @override
  State<ClothingCombos> createState() => _ClothingCombosState();
}

class _ClothingCombosState extends State<ClothingCombos> {
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
              "Minimum 50% off\nClothing Combos",
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
            ),
            Text(
              "shop now",
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
            )
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        Image.asset(AppImage.combo)
      ],
    );
  }
}
