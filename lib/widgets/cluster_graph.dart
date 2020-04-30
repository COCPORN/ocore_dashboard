import 'package:flutter/material.dart';
import 'package:ocore_dashboard/widgets/node.dart';

class ClusterGraph extends StatelessWidget {
  const ClusterGraph({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(child: Center(child: Node()))
    );
  }
}