import 'package:flutter/material.dart';
import 'package:ocore_dashboard/widgets/cluster_graph.dart';
import 'package:ocore_dashboard/widgets/inspector.dart';
import 'package:ocore_dashboard/widgets/side_menu.dart';

import 'package:ocore_dashboard/constants.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
            appBar: AppBar(
              brightness: Brightness.dark,
              backgroundColor: background,
              title: Text('OCore', style: TextStyle(color: Colors.white)),
              actions: <Widget>[
                Container(padding: EdgeInsets.only(right: 16), child: Icon(Icons.wifi, color: Colors.white,))
              ],
              //centerTitle: true,
            ),
            body: SideMenu(
                child: Expanded(                  
                    child: Container(
                        color: Colors.grey[300],
                        child: Inspector(child: ClusterGraph(key: GlobalKey())))))));
  }
}
