import 'package:flutter/material.dart';
import 'package:ocore_dashboard/widgets/node_header.dart';

import 'neuhelpers/neu_container.dart';

enum NodeType { DataEntity, Service, Filter, Api, Timer, Unknown }

class Node extends StatelessWidget {
  final NodeType nodeType;
  final String label;
  final double x;
  final double y;
  final GlobalKey globalKey;
  final double load;
  final Widget leading;

  const Node(
      {@required this.globalKey,
      this.load = 1.0,
      this.leading,
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
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[NodeHeader(label: label)],
        )));
  }
}
