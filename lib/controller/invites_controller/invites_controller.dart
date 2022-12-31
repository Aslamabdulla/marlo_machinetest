import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marlo/dependencies/dependecies.dart';
import 'package:marlo/model/invites_model/invites_model.dart';
import 'package:marlo/services/api/api.dart';

class InvitesController extends GetxController {
  RxList<Contact?> contactList = <Contact>[].obs;
  RxList<Invite?> invites = <Invite>[].obs;
  InvitesModel? result;
  RxBool seeAllPeoples = true.obs;
  RxBool seeAllInvites = true.obs;
  RxInt selectedIndex = 0.obs;

  Future<InvitesModel?> getInvites() async {
    try {
      var response = await ApiCalls().getInvites();
      if (response.statusCode == 200 || response.statusCode == 201) {
        result = await invitesModelFromJson(response.body);
        await mapResults();

        return result;
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }

  mapResults() {
    contactList.value = result?.data?.contacts?.map((e) => e).toList() ?? [];

    invites.value = result?.data?.invites?.map((e) => e).toList() ?? [];
  }

  List<String> roles = ["Admin", "Approver", "Preparer", "Viewer", "Employee"];
  @override
  void onInit() {
    getInvites();
    super.onInit();
  }
}
