import 'package:flutter/material.dart';
import 'package:ocore_dashboard/widgets/connections_painter.dart';
import 'package:ocore_dashboard/widgets/node.dart';

class ClusterGraph extends StatelessWidget {
  const ClusterGraph({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sourceNode = Node(label: 'Source', x: 20, y: 100, globalKey: GlobalKey());
    final nodes = <Node>[
      Node(label: 'Test', x: 130, y: 100, globalKey: GlobalKey(), load: 0.3),
      Node(label: 'Test2', x: 130, y: 160, globalKey: GlobalKey(), load: 0.7),
      Node(label: 'This is a test', x: 150, y: 500, globalKey: GlobalKey(),)
    ];

    return Stack(
      children: <Widget>[
        //Placeholder(),
        CustomPaint(
            painter: ConnectionsPainter(
                source: sourceNode, destinations: nodes, ancestorKey: key)),
        sourceNode,
        nodes[0],
        nodes[1],
        nodes[2]
      ],
    );
  }
}
