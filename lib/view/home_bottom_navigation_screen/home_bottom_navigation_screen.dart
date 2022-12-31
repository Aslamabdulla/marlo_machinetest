import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marlo/controller/bottom_controller/bottom_controller.dart';
import 'package:marlo/view/common/common.dart';
import 'package:marlo/view/home_bottom_navigation_screen/widgets/bottom_navigation_bar_items/bottom_navigation_items.dart';
import 'package:marlo/view/home_bottom_navigation_screen/widgets/bottom_screens/bottom_screens.dart';

class HomeBottomNavigationScreen extends StatelessWidget {
  const HomeBottomNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomController>(
        init: BottomController(),
        builder: (BottomController btmCtrl) {
          return Scaffold(
            bottomNavigationBar: Container(
              decoration: bottomBoxDecoration,
              child: BottomNavigationBar(
                backgroundColor: Theme.of(context).primaryColor,
                onTap: (index) => btmCtrl.selectedIndex(index),
                elevation: 5,
                showUnselectedLabels: true,
                currentIndex: 2,
                items: bottomBarItems,
                selectedItemColor: kBlue,
                unselectedItemColor: kGrey,
                unselectedLabelStyle: const TextStyle(color: kGrey),
              ),
            ),
            body: bottomScreens[btmCtrl.currentIndex.value],
          );
        });
  }
}
