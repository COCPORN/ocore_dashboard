import 'package:flutter/material.dart';

import 'menu_item.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key key, @required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Expanded(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: 180,
              child: ListView(
                children: <Widget>[
                  MenuItem(label: "Overview", iconData: Icons.home,),
                  MenuItem(label: "Cluster", iconData: Icons.device_hub),
                  MenuItem(label: "Logs", iconData: Icons.list),                  
                ],
              ),
            ),
            child
          ],
        ),
      )
    ]);
  }
}
