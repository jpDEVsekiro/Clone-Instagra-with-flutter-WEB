import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SugestionItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 5, 0, 5),
      child: Row(
        children: [
          CircleAvatar(
            radius: 18,
            backgroundImage: Image.asset("assets/images/rick.jpg").image,
            backgroundColor: Colors.transparent,
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Rick",
                style:
                    TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
              ),
              Text(
                "Rick",
                style:
                    TextStyle(fontWeight: FontWeight.w300, color: Colors.grey),
              ),
            ],
          )),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {},
              child: Text(
                'Ligar',
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 12),
              ),
            ),
          )
        ],
      ),
    );
  }
}
