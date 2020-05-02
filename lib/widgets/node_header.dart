import 'package:flutter/material.dart';
import 'package:ocore_dashboard/widgets/node.dart';

class NodeHeader extends StatelessWidget {
  const NodeHeader({Key key, @required this.label, @required this.nodeType})
      : super(key: key);
  final String label;
  final NodeType nodeType;

  // 783988
  _colorForNodeType(nodeType) {
    switch (nodeType) {
      case NodeType.Grain:
      case NodeType.StatelessGrain:
        return Color.fromARGB(0xff, 0x78, 0x39, 0x88);
      case NodeType.Service:
        return Colors.red;
      case NodeType.DataEntity:
        return Colors.green;
      default:
        return Colors.grey[600];
    }
  }

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
            color: _colorForNodeType(nodeType),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(4), topRight: Radius.circular(4))),
        child: Row(children: <Widget>[
          Icon(
            Icons.games,
            color: Colors.white,
            size: 14,
          ),
          SizedBox(
            width: 3,
          ),
          Expanded(
            child: Text(
              label,
              style: TextStyle(fontSize: 13, color: Colors.white),
            ),
          ),
          Icon(Icons.volume_mute, color: Colors.white, size: 14),
          Icon(Icons.add_alert, color: Colors.white, size: 14)
        ]),
      ),
    );
  }
}
