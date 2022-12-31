import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marlo/dependencies/dependecies.dart';
import 'package:marlo/view/common/common.dart';
import 'package:marlo/view/screens/contract_screen/widgets/list_tile_widget/list_tile_widget.dart';

class AllPeoplesListViewSeperatedWidget extends StatelessWidget {
  const AllPeoplesListViewSeperatedWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ListView.separated(
          primary: false,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            String? name =
                "${invitesCtrl.contactList[index]?.firstname ?? ""} ${invitesCtrl.contactList[index]?.lastname ?? ""}";
            bool? status = invitesCtrl.contactList[index]?.isactive ?? false;
            String? role = invitesCtrl.contactList[index]?.roleName ?? "";
            String? firstLetter =
                invitesCtrl.contactList[index]?.firstname?.substring(0, 1) ??
                    "";
            String? lastNameLetter =
                invitesCtrl.contactList[index]?.lastname?.substring(0, 1) ?? "";
            String? combinedLetter = firstLetter + lastNameLetter;
            return ListTileWidget(
              leading: combinedLetter.toUpperCase(),
              role: role,
              status: status,
              name: name,
              isVisible: true,
              index: index,
            );
          },
          separatorBuilder: (context, index) => kHeight10,
          itemCount: invitesCtrl.seeAllPeoples.value
              ? 3
              : invitesCtrl.contactList.length),
    );
  }
}
