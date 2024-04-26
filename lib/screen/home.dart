import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final leftTheme = Theme.of(context).colorScheme.primary;
    final rightTheme = Theme.of(context).colorScheme.secondary;

    return Row(
      children: [
        Expanded(
            flex: 2, child: Center(child: LeftContainer(leftTheme: leftTheme))),
        Expanded(flex: 1, child: RightContainer())
      ],
    );
  }
}

class RightContainer extends StatelessWidget {
  const RightContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(child: Text("测试"));
  }
}

// 左侧区域
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
