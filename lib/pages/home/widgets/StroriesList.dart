import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'StoryCircle.dart';

class StroriesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final moblie = ResponsiveWrapper.of(context).isMobile;
    return Container(
      height: 110,
      margin: EdgeInsets.only(top: moblie ? 15 : 30),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 50,
        padding: EdgeInsets.symmetric(horizontal: 16),
        itemBuilder: (_, i) => StoryCircle(),
        separatorBuilder: (_, __) => SizedBox(width: 16),
      ),
    );
  }
}
