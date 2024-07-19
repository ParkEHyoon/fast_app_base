import 'package:fast_app_base/common/common.dart';
import 'package:flutter/cupertino.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({super.key});

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 32,
      decoration: BoxDecoration(
          border: Border.all(
        color: context.appColors.mainColor,
      )),
    );
  }
}
