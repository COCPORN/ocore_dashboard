import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final IconData iconData;
  final String label;
  const MenuItem({Key key, @required this.iconData, @required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:  InkWell(
                      onTap: () {},
                      child: ListTile(
                          leading: Icon(iconData), title: Text(label)))
    );
  }
}