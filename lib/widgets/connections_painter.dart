import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ocore_dashboard/widgets/node.dart';

class ConnectionsPainter extends CustomPainter {
  final Node source;
  final List<Node> destinations;
  final GlobalKey ancestorKey;

  ConnectionsPainter(
      {@required this.source,
      @required this.destinations,
      @required this.ancestorKey});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.grey[400]
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8.0;

    if (source == null || source.globalKey == null) return;
    if (destinations == null || destinations.length == 0) return;

    RenderObject ancestorObject = ancestorKey.currentContext.findRenderObject();
    RenderBox sourceRenderBox =
        source.globalKey.currentContext.findRenderObject();
    Offset sourcePosition =
        sourceRenderBox.globalToLocal(Offset.zero, ancestor: ancestorObject);
    Size sourceSize = sourceRenderBox.size;
    final renderSource = Offset(-sourcePosition.dx, -sourcePosition.dy);

    int i = 0;

    destinations.forEach((destination) {
      paint.strokeWidth = lerpDouble(6, 8, destination.load);
      //paint.color = Color.lerp(Colors.grey[400], Color.fromARGB(255, 228, 180, 180), destination.load);
      RenderBox destinationRenderBox =
          destination.globalKey.currentContext.findRenderObject();

      Offset destinationPosition = destinationRenderBox
          .globalToLocal(Offset.zero, ancestor: ancestorObject);
      Size destSize = destinationRenderBox.size;

      // TODO: Figure out why these need flipping
      final renderDest =
          Offset(-destinationPosition.dx, -destinationPosition.dy);

      Path path = Path();
      path.moveTo(renderSource.dx + sourceSize.width,
          renderSource.dy + sourceSize.height / 2);
      path.cubicTo(
          renderSource.dx + sourceSize.width + 75,
          renderSource.dy + sourceSize.height / 2,
          renderDest.dx - 75,
          renderDest.dy + destSize.height / 2,
          renderDest.dx,
          renderDest.dy + destSize.height / 2);

      canvas.drawPath(path, paint);
      i++;
    });
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
