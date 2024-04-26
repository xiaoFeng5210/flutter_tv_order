import 'package:flutter/material.dart';
import '../widget/left_area.dart';
import '../widget/right_area.dart';

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
