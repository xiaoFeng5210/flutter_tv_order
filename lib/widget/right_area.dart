import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RightContainer extends StatelessWidget {
  const RightContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme.primaryContainer;

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
            Text("哈喽哈喽"),
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
          Text("我是小风"),
          Icon(Icons.access_alarm, size: 30, color: Colors.teal.shade500)
        ],
      ),
    );
  }
}
