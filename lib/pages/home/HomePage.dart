import 'package:flutter/material.dart';
import 'package:instagranweb/pages/home/widgets/Panel.dart';
import 'package:instagranweb/pages/home/widgets/PostWidget.dart';
import 'package:instagranweb/pages/home/widgets/ResponsiveAppBar.dart';
import 'package:instagranweb/pages/home/widgets/StroriesList.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 52),
        child: ResponsiveAppBar(),
      ),
      backgroundColor: Colors.black87,
      body: Center(
        child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 1000),
            child: Row(
              children: [
                Expanded(
                  child: ListView(
                    children: [
                      StroriesList(),
                      PostWidget(),
                      PostWidget(),
                      PostWidget(),
                      PostWidget(),
                      PostWidget(),
                      PostWidget(),
                      PostWidget(),
                      PostWidget(),
                      PostWidget(),
                      PostWidget(),
                      PostWidget(),
                      PostWidget()
                    ],
                  ),
                ),
                Panel()
              ],
            )),
      ),
    );
  }
}
