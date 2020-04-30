import 'package:flutter/material.dart';

import 'neuhelpers/neu_container.dart';

enum NodeType { DataEntity, Service, Filter, Api, Timer, Unknown }

class Node extends StatelessWidget {
  final NodeType nodeType;
  final String label;
  final double x;
  final double y;
  final GlobalKey globalKey;
  final double load;
  const Node(
      {@required this.globalKey,
      this.load = 1.0,
      this.label,
      this.x,
      this.y,
      this.nodeType = NodeType.Unknown})
      : super(key: globalKey);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: y,
      left: x,
      child: NeuContainer(
          padding: EdgeInsets.all(10),
          child: Text(label)));
  }
}
