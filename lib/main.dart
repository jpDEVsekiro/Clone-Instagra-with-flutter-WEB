import 'package:flutter/material.dart';
import 'package:instagranweb/pages/home/HomePage.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagran in Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      builder: (context, widget) {
        return ResponsiveWrapper.builder(
            ClampingScrollWrapper.builder(context, widget),
            minWidth: 450,
            defaultName: MOBILE,
            breakpoints: [
              ResponsiveBreakpoint.resize(450, name: MOBILE),
              ResponsiveBreakpoint.resize(700, name: TABLET),
              ResponsiveBreakpoint.resize(800, name: DESKTOP),
            ],
            defaultScale: true);
      },
      home: HomePage(),
    );
  }
}
