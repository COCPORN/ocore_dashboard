import 'package:flutter/material.dart';
import 'package:ocore_dashboard/pages/index_page.dart';
import 'package:ocore_dashboard/services/event_service.dart';
//import 'package:ocore_dashboard/pages/login_page.dart';

void main() {  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    EventService.initialize();
    return MaterialApp(
      title: 'OCore',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: IndexPage(),
    );
  }
}
