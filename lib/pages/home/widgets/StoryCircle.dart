import 'package:flutter/material.dart';

class StoryCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 66,
          width: 66,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                  colors: [Colors.blue, Colors.green],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft)),
          alignment: Alignment.center,
          child: Container(
            alignment: Alignment.center,
            width: 60,
            height: 60,
            decoration:
                BoxDecoration(color: Colors.black, shape: BoxShape.circle),
            child: CircleAvatar(
              radius: 26,
              backgroundImage: Image.asset("assets/images/rick.jpg").image,
            ),
          ),
        ),
        Text(
          "rick",
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
