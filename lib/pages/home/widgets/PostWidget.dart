import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class PostWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final desktop = ResponsiveWrapper.of(context).isDesktop;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(16, 14, 14, 14),
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
                  child: Text(
                "Rick",
                style:
                    TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
              )),
              GestureDetector(
                child: Icon(
                  Icons.more_vert_rounded,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
        Center(
            child: Image.asset(
          "assets/images/rick.jpg",
          height: 600,
        )),
        Padding(
          padding: EdgeInsets.fromLTRB(4, 4, 4, 4),
          child: Row(
            children: [
              IconButton(
                  icon: Icon(Icons.favorite_border),
                  color: Colors.white,
                  onPressed: () {}),
              SizedBox(width: 4),
              IconButton(
                  icon: Icon(Icons.send),
                  color: Colors.white,
                  onPressed: () {}),
              SizedBox(width: 4),
              Expanded(child: Container()),
              IconButton(
                icon: Icon(Icons.bookmark_border),
                onPressed: () {},
                color: Colors.white,
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 16, bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Curtido por Rick e outras 300 pessoas",
                  style: TextStyle(color: Colors.white)),
              SizedBox(width: 8),
              Text("Há 1 hora", style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
        if (desktop) ...[
          Divider(color: Colors.white),
          Row(
            children: [
              Expanded(
                  child: Padding(
                padding: EdgeInsets.fromLTRB(16, 20, 0, 24),
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      isCollapsed: true,
                      hintText: "Adicione um comentário . . .",
                      hintStyle: TextStyle(fontSize: 13, color: Colors.white)),
                ),
              )),
              FlatButton(
                  onPressed: () {},
                  textColor: Colors.white,
                  child: Text("Publicar"))
            ],
          )
        ]
      ],
    );
  }
}
