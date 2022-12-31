import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marlo/view/common/common.dart';
import 'package:marlo/view/screens/contract_screen/widgets/list_tile_widget/list_tile_widget.dart';

import '../../../../../dependencies/dependecies.dart';

class InvitePeopleListViewSeperatedWidget extends StatelessWidget {
  const InvitePeopleListViewSeperatedWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ListView.separated(
          primary: false,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            String? name = (invitesCtrl.invites[index]?.email ?? "");

            String? configName = invitesCtrl.invites[index]?.configName ?? "";
            String? lastNameLetter =
                invitesCtrl.invites[index]?.email?.substring(0, 2) ?? "";
            // String? combinedLetter = firstLetter + lastNameLetter;
            return ListTileWidget(
              leading: lastNameLetter.toUpperCase(),
              role: configName,
              status: true,
              name: name,
              index: index,
              isVisible: false,
            );
          },
          separatorBuilder: (context, index) => kHeight10,
          itemCount:
              invitesCtrl.seeAllInvites.value ? 3 : invitesCtrl.invites.length),
    );
  }
}
