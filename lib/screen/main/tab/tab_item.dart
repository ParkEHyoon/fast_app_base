import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/1.home/f_home.dart';
import 'package:fast_app_base/screen/main/tab/2.theme/f_theme.dart';
import 'package:fast_app_base/screen/main/tab/3.review/f_review.dart';
import 'package:fast_app_base/screen/main/tab/4.community/f_community.dart';
import 'package:fast_app_base/screen/main/tab/5.setting/f_setting.dart';
import 'package:flutter/material.dart';

enum TabItem {
  home(Icons.home, '홈', HomeFragment()),
  theme(Icons.palette, '테마', ThemeFragment()),
  review(Icons.rate_review, '리뷰작성', ReviewFragment()),
  community(Icons.people, '커뮤니티', CommunityFragment()),
  setting(Icons.settings, '마이', SettingFragment());

  final IconData activeIcon;
  final IconData inActiveIcon;
  final String tabName;
  final Widget firstPage;

  const TabItem(this.activeIcon, this.tabName, this.firstPage, {IconData? inActiveIcon})
      : inActiveIcon = inActiveIcon ?? activeIcon;

  BottomNavigationBarItem toNavigationBarItem(BuildContext context, {required bool isActivated}) {
    return BottomNavigationBarItem(
        icon: Icon(
          key: ValueKey(tabName),
          isActivated ? activeIcon : inActiveIcon,
          color:
              isActivated ? context.appColors.iconButton : context.appColors.iconButtonInactivate,
        ),
        label: tabName);
  }
}
