import 'package:flutter/material.dart';
import 'package:marlo/view/common/common.dart';

import 'package:marlo/view/home_bottom_navigation_screen/widgets/icons/teams_icons_icons.dart';

List<BottomNavigationBarItem> bottomBarItems = const [
  BottomNavigationBarItem(
    icon: Icon(
      TeamsIcons.home,
    ),
    label: "Home",
  ),
  BottomNavigationBarItem(
    icon: Icon(TeamsIcons.loans),
    label: "Loans",
  ),
  BottomNavigationBarItem(
    icon: Icon(TeamsIcons.contracts),
    label: "Contracts",
  ),
  BottomNavigationBarItem(
    icon: Icon(TeamsIcons.teams),
    label: "Teams",
  ),
  BottomNavigationBarItem(
    icon: Icon(TeamsIcons.chat),
    label: "Chat",
  ),
];
