// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:marlo/dependencies/dependecies.dart';
import 'package:marlo/view/common/common.dart';

class ListTileWidget extends StatelessWidget {
  final bool isVisible;
  final int index;
  final String name;
  final String role;
  final bool status;
  final String leading;
  const ListTileWidget({
    Key? key,
    required this.isVisible,
    required this.index,
    required this.name,
    required this.role,
    required this.status,
    required this.leading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = Get.width / 2;
    return Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: kGrey.withOpacity(.25),
              offset: const Offset(0, 0),
              blurRadius: 2,
            ),
          ],
          borderRadius: BorderRadius.circular(10),
          color: MediaQuery.of(context).platformBrightness == Brightness.dark
              ? darkThemeColor
              : kWhite),
      child: ListTile(
        leading: Container(
            height: 40.h,
            width: 40.h,
            decoration: BoxDecoration(
                color: isVisible ? kDarkBlue : kBrown,
                borderRadius: BorderRadius.circular(10.r)),
            child: Center(
                child: Text(
              leading,
              style: TextStyle(color: kWhite),
            ))),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: width,
              child: Text(
                name,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            isVisible
                ? Text(
                    role,
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        fontFamily: "NotoSans"),
                  )
                : SizedBox()
          ],
        ),
        subtitle: isVisible ? Text(status ? "Active" : "Inactive") : Text(role),
      ),
    );
  }
}
