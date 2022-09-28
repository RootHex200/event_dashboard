import 'package:flutter/material.dart';

class Screen_helper extends StatelessWidget {
  Widget mobile;
  Widget tablet;
  Widget desktop;
  Screen_helper(
      {Key? key,
      required this.mobile,
      required this.tablet,
      required this.desktop})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      if (constraints.maxWidth < 800) {
        return mobile;
      } else if (constraints.maxWidth >= 800 && constraints.maxWidth < 1200) {
        return tablet;
      } else {
        return desktop;
      }
    });
  }
}
