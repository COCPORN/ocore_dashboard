import 'package:flutter/material.dart';

class NeuContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry padding;
  const NeuContainer({Key key, @required this.child, this.padding}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: padding,
        child: child,
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.white,
                offset: Offset(
                  -2.2,
                  -2.2,
                ),
                blurRadius: 5,
                spreadRadius: 0.4),
            BoxShadow(
                color: Colors.grey[400],
                offset: Offset(
                  2.2,
                  2.2,
                ),
                blurRadius: 5,
                spreadRadius: 0.4)
          ],
          color: Colors.grey[300],
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ));
  }
}
