// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:marlo/dependencies/dependecies.dart';
import 'package:marlo/model/invites_model/invites_model.dart';

import 'package:marlo/view/common/common.dart';
import 'package:marlo/view/screens/contract_screen/widgets/floating_action_button/floating_action_button.dart';
import 'package:marlo/view/screens/invite_screen/widgets/invite_widget.dart';

import 'widgets/all_people_list_view/all_people_listview_widget.dart';
import 'widgets/appbar_widget/app_bar.dart';
import 'widgets/invite_people_listview/invite_people_list_view.dart';

import 'widgets/sub_head_widget/sub_head_tile.dart';

class ContractScreen extends StatelessWidget {
  const ContractScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: FutureBuilder<InvitesModel?>(
              future: invitesCtrl.getInvites(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return const Center(
                    child: Text("Error Ocuured"),
                  );
                } else if (snapshot.connectionState ==
                    ConnectionState.waiting) {
                  return SizedBox(
                    height: Get.height,
                    child: Center(
                      child: CupertinoActivityIndicator(
                        radius: 20.sp,
                      ),
                    ),
                  );
                } else if (snapshot.data == null) {
                  return SizedBox(
                    height: Get.height,
                    child: const Center(
                      child: Text("Please Check Token"),
                    ),
                  );
                } else {
                  return Obx(
                    () => Column(
                      children: [
                        kHeight30,
                        SubHeadTitleWidget(
                          onTap: () {
                            invitesCtrl.seeAllPeoples.value =
                                !invitesCtrl.seeAllPeoples.value;
                          },
                          leading:
                              "All people · ${invitesCtrl.contactList.length}",
                          trailing: "See all",
                        ),
                        kHeight20,
                        const AllPeoplesListViewSeperatedWidget(),
                        kHeight30,
                        SubHeadTitleWidget(
                          onTap: () {
                            invitesCtrl.seeAllInvites.value =
                                !invitesCtrl.seeAllInvites.value;
                          },
                          leading:
                              "invited people · ${invitesCtrl.invites.length}",
                          trailing: "See all",
                        ),
                        kHeight20,
                        const InvitePeopleListViewSeperatedWidget(),
                      ],
                    ),
                  );
                }
              }),
        ),
      ),
      floatingActionButton: FloatingActionButtonWidget(
        onTap: () async {
          Get.to(() => const InviteScreen(),
              duration: const Duration(milliseconds: 400),
              transition: Transition.rightToLeft);
        },
      ),
    );
  }
}
