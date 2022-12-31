import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:marlo/dependencies/dependecies.dart';
import 'package:marlo/view/common/common.dart';

Future<dynamic> teamRolesBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    backgroundColor: Colors.transparent,
    context: context,
    builder: (context) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 3),
        decoration: BoxDecoration(
            color: MediaQuery.of(context).platformBrightness == Brightness.dark
                ? darkThemeColorModelBottom
                : kLightWhite,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(24), topRight: Radius.circular(24))),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  decoration: BoxDecoration(
                      color: kLightBlue,
                      borderRadius: BorderRadius.circular(2.5.r)),
                  margin: EdgeInsets.only(top: 20.r),
                  height: 5.h,
                  width: 50.w,
                ),
              ),
              kHeight10,
              Text(
                "Team roles",
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
              ),
              kHeight30,
              ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Obx(
                      () => GestureDetector(
                        onTap: () {
                          invitesCtrl.selectedIndex.value = index;
                          invitesCtrl.update();
                        },
                        child: Container(
                          height: 54,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: MediaQuery.of(context)
                                              .platformBrightness ==
                                          Brightness.dark
                                      ? darkThemeColorTextField
                                      : kGrey.withOpacity(.25),
                                  offset: const Offset(0, 0),
                                  blurRadius: 2,
                                ),
                              ],
                              color: invitesCtrl.selectedIndex.value == index
                                  ? kLightBlue
                                  : MediaQuery.of(context).platformBrightness ==
                                          Brightness.dark
                                      ? darkThemeColor
                                      : kWhite,
                              borderRadius: BorderRadius.circular(10.r)),
                          padding: EdgeInsets.only(left: 10.r, right: 10.r),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                invitesCtrl.roles[index],
                                style: const TextStyle(
                                    fontFamily: "NotoSans",
                                    color: kGrey,
                                    fontWeight: FontWeight.w600),
                              )),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => kHeight10,
                  itemCount: 5)
            ],
          ),
        )),
  );
}
