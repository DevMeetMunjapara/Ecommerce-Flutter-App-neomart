import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neomart/view/widget/appImage.dart';

class HomediscountBenar extends StatefulWidget {
  const HomediscountBenar({super.key});

  @override
  State<HomediscountBenar> createState() => _HomediscountBenarState();
}

class _HomediscountBenarState extends State<HomediscountBenar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10.h,
        ),
        Container(
          width: double.infinity,
          height: 120.h,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(AppImage.discount))),
        ),
      ],
    );
  }
}
