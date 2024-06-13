import 'package:flutter/material.dart';
import '../widget/doing_order.dart';

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
        // Expanded(
        //     flex: 1, child: Center(child: LeftContainer(leftTheme: leftTheme))),
        // Expanded(flex: 1, child: RightContainer())
        Expanded(
          flex: 1,
          child: DoingOrderList(),
        ),
      ],
    );
  }
}
