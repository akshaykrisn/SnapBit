import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class CommentsScreen extends StatefulWidget {
  const CommentsScreen({Key? key}) : super(key: key);

  @override
  State<CommentsScreen> createState() => _CommentsScreenState();
}

class _CommentsScreenState extends State<CommentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetw,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    CupertinoIcons.left_chevron,
                    color: Colors.white,
                  )),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.27,
              ),
              Column(
                children: [
                  Text(
                    'Akshay\'s bit',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  Text(
                    '1 hr ago',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  )
                ],
              )
            ],
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
          Divider(
              color: Colors.grey
          ),
          Container(
            height: MediaQuery.of(context).size.height*0.4,
            child: ListView.builder(itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                      leading: CircleAvatar(
                        // child: Image.asset('assets/1.jpeg'),
                      ),
                      title: Text("List item",style: TextStyle(fontSize: 12,color: Colors.white)),
                    subtitle: Text('Keep it Up!',style: TextStyle(fontSize: 17,color: Colors.white),),
                  );
                }),
          ),
          Divider(
              color: Colors.grey
          ),
          // Container(
          //   height: MediaQuery.of(context).size.height*0.1,
          //   child: Row(
          //     children: [
          //       TextField(),
          //       IconButton(onPressed: (){}, icon: Icon(FontAwesome5Regular.smile))
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}
