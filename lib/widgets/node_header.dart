import 'package:flutter/material.dart';
import 'package:ocore_dashboard/widgets/node.dart';

class NodeHeader extends StatelessWidget {
  const NodeHeader({Key key, @required this.label, @required this.nodeType})
      : super(key: key);
  final String label;
  final NodeType nodeType;

  // TODO: Icon research: donut_small, games, queue
  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        //width: MediaQuery.of(context).size.width,//
        //constraints: BoxConstraints.tightForFinite(width: 300, height: 30),
        //width: double.infinity,
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
            color: Colors.lightBlue,
            borderRadius: BorderRadius.all(Radius.circular(4))),
        child: Row(children: <Widget>[
          Icon(
            Icons.games,
            color: Colors.white,
            size: 14,
          ),
          SizedBox(
            width: 3,
          ),
          Text(
            label,
            style: TextStyle(fontSize: 13, color: Colors.white),
          )
        ]),
      ),
    );
  }
}
