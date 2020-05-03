import 'package:flutter/material.dart';

class NodeMethod extends StatelessWidget {
  const NodeMethod({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: <Widget>[
        Icon(Icons.add_box),
        Expanded(child: Text('Read'))
      ]),
    );
  }
}
