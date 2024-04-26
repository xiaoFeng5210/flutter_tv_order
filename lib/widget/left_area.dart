import 'package:flutter/material.dart';

class LeftContainer extends StatelessWidget {
  const LeftContainer({
    super.key,
    required this.leftTheme,
  });

  final Color leftTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: leftTheme,
      width: 350,
      height: 350,
      decoration: BoxDecoration(
        color: leftTheme,
        borderRadius: BorderRadius.circular(20), // 调整圆角大小
      ),
    );
  }
}
