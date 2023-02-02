import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:line_icons/line_icon.dart';
import 'package:snapbit/components/post.dart';
import 'package:snapbit/screens/profile.dart';

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
        body: ListView(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      FontAwesome.bell,
                      color: Colors.white,
                    )),
                Text(
                  'Snapbit',
                  style: TextStyle(color: Colors.white),
                ),
                IconButton(
                    onPressed: () {
                      Get.to(Profile());
                    },
                    icon: Icon(
                      FontAwesome.user,
                      color: Colors.white,
                    )),
              ],
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: PostCard(),
                      ),
                      SizedBox(
                        height: 16,
                      )
                    ],
                  ),
                );
              },
            ),
            // ListView.builder(
            //     itemCount: 5,
            //     itemBuilder: (BuildContext context, int index) {

            //     }),
          ],
        ));
  }
}
