import 'package:flutter/material.dart';

class Node extends StatelessWidget {
  const Node({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: BoxConstraints(),
        child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(color: Colors.white, offset: Offset(-1, -1,), blurRadius: 1, spreadRadius: 1),
                  BoxShadow(color: Colors.black26, offset: Offset(1, 1,), blurRadius: 1, spreadRadius: 1)
                ],
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(4)),
                border: Border()),
            child: Text('Node')));
  }
}
