import 'package:flutter/material.dart';
import 'package:ocore_dashboard/widgets/inspector_header.dart';

class Inspector extends StatelessWidget {
  const Inspector({Key key, @required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(child: child),
        Container(
          color: Colors.white,
          width: 180,
          child: Column(children: <Widget>[
            InspectorHeader(label: 'Inspector')
          ])
        )      
      ],
    );
  }
}