import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///////text_fonts///////////////
const kBlack = Colors.black;
const kWhite = Colors.white;
const kGrey = Color.fromRGBO(118, 128, 138, 1);
const kBlue = Color.fromRGBO(12, 171, 223, 1);
const kDarkBlue = Color.fromRGBO(26, 98, 198, 1);
const kLightGrey = Color.fromRGBO(233, 238, 240, 1);
const kLightWhite = Color.fromRGBO(247, 247, 247, 1);
const kLightBlue = Color.fromRGBO(198, 235, 246, 1);
const kBrown = Color.fromRGBO(172, 129, 110, 1);
const darkThemeColor = Color.fromRGBO(68, 67, 67, 1);
const darkThemeColorTextField = Color.fromRGBO(35, 35, 35, 1);
const darkThemeColorModelBottom = Color.fromRGBO(22, 22, 24, 1);
//////////box decoration///////
const bottomBoxDecoration = BoxDecoration(
  boxShadow: [
    BoxShadow(
      color: Colors.black12,
      offset: Offset(0, -1),
      blurRadius: 6.0,
    ),
  ],
);

final boxDecorFloatingAction =
    BoxDecoration(shape: BoxShape.circle, color: kBlue, boxShadow: [
  BoxShadow(
    color: kBlue.withOpacity(.25),
    offset: const Offset(0, 10),
    blurRadius: 10,
  ),
]);
/////////white spaces////////
///

final kHeight30 = SizedBox(
  height: 30.sp,
);

final kHeight20 = SizedBox(
  height: 20.sp,
);
final kHeight15 = SizedBox(
  height: 15.sp,
);
final kHeight10 = SizedBox(
  height: 10.sp,
);
////////textStyle//////

TextStyle textStyleRowSubHead(Color color) {
  return TextStyle(
      fontFamily: 'NotoSans',
      fontSize: 16.sp,
      fontWeight: FontWeight.w600,
      color: color);
}

final kHeadBoldTextStyle = TextStyle(
    fontFamily: "Heebo", fontSize: 34.sp, fontWeight: FontWeight.w700);
