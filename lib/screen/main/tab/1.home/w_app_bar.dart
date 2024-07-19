import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({super.key});

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      // color: context.appColors.appBarBackground,
      color: Colors.amber,
      child: Row(
        children: [
          Width(10),
        ],
      ),
    );
  }
}
