import 'package:flutter/material.dart';
import 'package:ocore_dashboard/widgets/circular_meter.dart';

import '../constants.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: baseColor,
      child: Center(child: CircularMeter()),
    );
  }
}