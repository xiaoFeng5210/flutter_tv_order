import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DoingOrderList extends ConsumerWidget {
  const DoingOrderList({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.amber,
            child: Column(
              children: [
                Text('Order 1'),
                Text('Order 2'),
                Text('Order 3'),
              ],
            ),
          ),
        ),
        Expanded(child: Container(color: Colors.blue)),
      ],
    );
  }
}
