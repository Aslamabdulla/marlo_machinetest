import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:marlo/view/common/common.dart';

import 'role_selection_field_widget/role_selection_text_field.dart';
import 'text_form_field_email/text_form_field_email.dart';

class InviteScreen extends StatelessWidget {
  const InviteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              onPressed: () => Get.back(),
              icon: Icon(
                Icons.chevron_left,
                size: 34.sp,
              )),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Invite", style: kHeadBoldTextStyle),
              kHeight20,
              textFormFieldEmailWidget(context),
              kHeight10,
              roleSelectionFieldModelSheetWidget(context),
            ],
          ),
        ),
        floatingActionButton: GestureDetector(
          onTap: () {},
          child: Container(
            height: 48.h,
            width: 328.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: kBlue,
                boxShadow: [
                  BoxShadow(
                    color: kBlue.withOpacity(.25),
                    offset: const Offset(0, 10),
                    blurRadius: 20,
                  ),
                ]),
            child: Center(
              child: Text(
                "Continue",
                style: TextStyle(
                    fontSize: 14.sp,
                    color: kWhite,
                    fontFamily: "NotoSans",
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
