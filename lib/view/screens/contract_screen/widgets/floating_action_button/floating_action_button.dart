import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marlo/view/common/common.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  final VoidCallback onTap;
  const FloatingActionButtonWidget({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 56.h,
        width: 56.w,
        decoration: boxDecorFloatingAction,
        child: Icon(
          Icons.add,
          size: 25.sp,
          color: kWhite,
        ),
      ),
    );
  }
}
