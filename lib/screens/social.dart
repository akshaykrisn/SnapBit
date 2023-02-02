import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:hive/hive.dart';
import 'package:line_icons/line_icon.dart';

class SocialPage extends StatefulWidget {
  const SocialPage({super.key});

  @override
  State<SocialPage> createState() => _SocialPageState();
}

class _SocialPageState extends State<SocialPage> {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600, color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height*0.03,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: (){}, icon: Icon(FontAwesome.bell,color: Colors.white,)),
              Text('Snapbit',style: TextStyle(color: Colors.white),),
              IconButton(onPressed: (){}, icon: Icon(FontAwesome.user,color: Colors.white,)),
            ],
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10)
              ),
              width: double.infinity,
              height: 470,
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      radius: 20,
                    ),
                    title: Text('Akshay Krishna'),
                    subtitle: Text(
                      '5 min ago'
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
                          offset: Offset(0,5),
                          blurRadius: 8.0
                        )
                      ],
                      image: DecorationImage(
                        image: AssetImage('assets/1.jpeg'),
                        fit: BoxFit.fitWidth
                      )
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(AntDesign.heart,size: 30,)),
                      IconButton(onPressed: (){}, icon: Icon(FontAwesome5Solid.smile,size: 30,)),
                      IconButton(onPressed: (){}, icon: Icon(FontAwesome.comment,size: 30,)),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}
