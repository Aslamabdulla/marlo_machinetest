import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marlo/view/common/common.dart';

AppBar appBarWidget() {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    foregroundColor: kBlack,
    title: const Text(
      "Teams",
    ),
    actions: [
      IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            color: kGrey,
            size: 25.sp,
          ))
    ],
  );
}
