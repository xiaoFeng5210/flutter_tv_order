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
        Expanded(
            child: Container(
          color: theme,
          // child: ,
        ))
      ],
    );
  }
}
