import 'package:clay_containers/widgets/clay_containers.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class CircularMeter extends StatelessWidget {
  final Color color;

  const CircularMeter({Key key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClayContainer(
      color: baseColor,
      height: 200,
      width: 200,
      borderRadius: 2000,
    );
  }
}
