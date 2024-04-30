import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final numProvider = StateProvider<int>((ref) => 2);

class RightContainer extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context).colorScheme.primaryContainer;

    int num = ref.watch(numProvider);

    void press() {
      ref.read(numProvider.notifier).update((state) => state + 1);
    }

    void onReduced() {
      final reader = ref.read(numProvider.notifier);
      if (reader.state > 1) {
        reader.update((state) => state - 1);
      }
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          // color: Theme.of(context).colorScheme.secondary,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(" hello world ", style: TextStyle(fontSize: 20)),
            Text(" I am Jack "),
          ],
        ),
        Row(
          // color: Theme.of(context).colorScheme.secondary,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(" hello world ", style: TextStyle(fontSize: 20)),
            Text(" I am Jack "),
          ],
        ),
        Contents(),
        Row(
          children: [
            Text("数字：$num"),
            SizedBox(width: 10),
            ElevatedButton(onPressed: press, child: Text("add")),
            SizedBox(width: 10),
            ElevatedButton(onPressed: onReduced, child: Text("reduce"))
          ],
        )
      ],
    );
  }
}

class Contents extends StatelessWidget {
  const Contents({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      margin: EdgeInsets.symmetric(vertical: 5.0),
      padding: EdgeInsets.all(5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("lebai"),
          SizedBox(width: 10),
          Icon(Icons.access_alarm, size: 30, color: Colors.teal.shade500)
        ],
      ),
    );
  }
}
