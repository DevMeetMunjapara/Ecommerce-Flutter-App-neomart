import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neomart/view/widget/appColor.dart';
import 'package:neomart/view/widget/appImage.dart';
import 'package:neomart/view/widget/costomAppBar.dart';
import 'package:neomart/view/widget/homepage/HomediscountBenar.dart';
import 'package:neomart/view/widget/homepage/clothingCombos.dart';
import 'package:neomart/view/widget/homepage/everydayNeed.dart';
import 'package:neomart/view/widget/homepage/homeCategory.dart';
import 'package:neomart/view/widget/homepage/homeRecently.dart';
import 'package:neomart/view/widget/homepage/homeSearch.dart';
import 'package:neomart/view/widget/homepage/homeSponsored.dart';
import 'package:neomart/view/widget/homepage/homeSuggested.dart';
import 'package:neomart/view/widget/homepage/nutrition.dart';

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
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeSearch(),
              HomediscountBenar(),
              HomeCategory(),
              HomeSuggest(),
              HomeRecently(),
              HomeSponsored(),
              ClothingCombos(),
              Nutrition(),
              Everydayneed(), 
            ],
          ),
        ),
      ),
    );
  }
}
