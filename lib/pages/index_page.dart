import 'package:flutter/material.dart';
import 'package:ocore_dashboard/widgets/cluster_graph.dart';
import 'package:ocore_dashboard/widgets/side_menu.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
            appBar: AppBar(
              brightness: Brightness.dark,
              backgroundColor: Color.fromARGB(0xff, 0x36, 0x32, 0x3d),
              title: Text('OCore', style: TextStyle(color: Colors.white)),
              actions: <Widget>[
                Container(padding: EdgeInsets.only(right: 16), child: Icon(Icons.wifi, color: Colors.white,))
              ],
              //centerTitle: true,
            ),
            body: SideMenu(
                child: Expanded(                  
                    child: Container(
                        color: Colors.black26,
                        child: ClusterGraph())))));
  }
}
