import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marlo/view/common/common.dart';

Container textFormFieldEmailWidget(BuildContext context) {
  return Container(
    height: 60.h,
    decoration: BoxDecoration(
      color: MediaQuery.of(context).platformBrightness == Brightness.dark
          ? darkThemeColor
          : kLightGrey,
      borderRadius: BorderRadius.all(Radius.circular(10.r)),
    ),
    child: Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 10).r,
          child: Text(
            "Bussiness Email",
            style: TextStyle(fontSize: 12.sp, color: kGrey),
          ),
        ),
        Expanded(
          child: TextFormField(
            // keyboardType: TextInputType.multiline,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        kHeight10
      ],
    ),
  );
}
