import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(10)),
      width: double.infinity,
      height: 470,
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 20,
            ),
            title: Text(
              'Akshay Krishna',
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              '5 min ago',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            height: 330,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black45,
                      offset: Offset(0, 5),
                      blurRadius: 8.0)
                ],
                image: DecorationImage(
                    image: AssetImage('assets/1.jpeg'), fit: BoxFit.fitWidth)),
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    AntDesign.heart,
                    color: Colors.white,
                    size: 30,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesome5Solid.smile,
                    color: Colors.white,
                    size: 30,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesome.comment,
                    color: Colors.white,
                    size: 30,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
