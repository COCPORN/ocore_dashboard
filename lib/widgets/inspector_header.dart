import 'package:flutter/material.dart';

class InspectorHeader extends StatelessWidget {
  const InspectorHeader({Key key, @required this.label}) : super(key: key);
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Text(label))
    );
  }
}