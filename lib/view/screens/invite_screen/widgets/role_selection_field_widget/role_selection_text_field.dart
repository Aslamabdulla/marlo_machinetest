import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marlo/controller/invites_controller/invites_controller.dart';
import 'package:marlo/view/common/common.dart';
import 'package:marlo/view/screens/invite_screen/widgets/bottom_sheet_team_role/bottom_sheet_team_role.dart';

GetBuilder<InvitesController> roleSelectionFieldModelSheetWidget(
    BuildContext context) {
  return GetBuilder<InvitesController>(
    init: InvitesController(),
    builder: (controller) => TextFormField(
      style: const TextStyle(color: kGrey),
      readOnly: true,
      controller: TextEditingController(
          text: controller.roles[controller.selectedIndex.value]),
      // keyboardType: TextInputType.multiline,
      decoration: InputDecoration(
        suffixIcon: IconButton(
            onPressed: () {
              teamRolesBottomSheet(context);
            },
            icon: const Icon(Icons.expand_more)),
        filled: true,
        fillColor: MediaQuery.of(context).platformBrightness == Brightness.dark
            ? darkThemeColor
            : kLightGrey,
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    ),
  );
}
