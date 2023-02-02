import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_feed_reaction/flutter_feed_reaction.dart';
import 'package:flutter_reaction_button/flutter_reaction_button.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:snapbit/screens/comments.dart';
import 'package:lottie/lottie.dart';

class PostCard extends StatefulWidget {
  final postNo;
  const PostCard({
    super.key,
    required this.postNo,
  });

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  bool reacted = false;
  int vals = 0;
  final reactionMedia = [
    Lottie.asset(
      'assets/lottie/heart.json',
      width: 40.0,
      height: 40.0,
    ),
    Lottie.asset(
      'assets/lottie/care.json',
      width: 40.0,
      height: 40.0,
    ),
    Lottie.asset(
      'assets/lottie/lol.json',
      width: 40.0,
      height: 40.0,
    ),
    Lottie.asset(
      'assets/lottie/sad.json',
      width: 40.0,
      height: 40.0,
    ),
    Lottie.asset(
      'assets/lottie/angry.json',
      width: 40.0,
      height: 40.0,
    )
  ];
  final _reactions = [
    FeedReaction(
      id: 0,
      header: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.black.withOpacity(0.6),
        ),
        padding: EdgeInsets.only(
          left: 7.0,
          right: 7.0,
        ),
        child: Text(
          "Love",
          style: TextStyle(fontSize: 8.0, color: Colors.white),
        ),
      ),
      reaction: Lottie.asset(
        'assets/lottie/heart.json',
        width: 40.0,
        height: 40.0,
      ),
    ),
    FeedReaction(
      id: 1,
      header: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.black.withOpacity(0.6),
        ),
        padding: EdgeInsets.only(
          left: 7.0,
          right: 7.0,
          top: 2.0,
          bottom: 2.0,
        ),
        margin: EdgeInsets.only(bottom: 8.0),
        child: Text(
          "Care",
          style: TextStyle(fontSize: 8.0, color: Colors.white),
        ),
      ),
      reaction: Lottie.asset(
        'assets/lottie/care.json',
        width: 40.0,
        height: 40.0,
      ),
    ),
    FeedReaction(
      id: 2,
      header: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.black.withOpacity(0.6),
        ),
        padding: EdgeInsets.only(
          left: 7.0,
          right: 7.0,
          top: 2.0,
          bottom: 2.0,
        ),
        margin: EdgeInsets.only(bottom: 8.0),
        child: Text(
          "Lol",
          style: TextStyle(fontSize: 8.0, color: Colors.white),
        ),
      ),
      reaction: Lottie.asset(
        'assets/lottie/lol.json',
        width: 40.0,
        height: 40.0,
      ),
    ),
    FeedReaction(
      id: 3,
      header: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.black.withOpacity(0.6),
        ),
        padding: EdgeInsets.only(
          left: 7.0,
          right: 7.0,
          top: 2.0,
          bottom: 2.0,
        ),
        margin: EdgeInsets.only(bottom: 8.0),
        child: Text(
          "Sad",
          style: TextStyle(fontSize: 8.0, color: Colors.white),
        ),
      ),
      reaction: Lottie.asset(
        'assets/lottie/sad.json',
        width: 40.0,
        height: 40.0,
      ),
    ),
    FeedReaction(
      id: 4,
      header: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.black.withOpacity(0.6),
        ),
        padding: EdgeInsets.only(
          left: 7.0,
          right: 7.0,
          top: 2.0,
          bottom: 2.0,
        ),
        margin: EdgeInsets.only(bottom: 8.0),
        child: Text(
          "Angry",
          style: TextStyle(fontSize: 8.0, color: Colors.white),
        ),
      ),
      reaction: Lottie.asset(
        'assets/lottie/angry.json',
        width: 40.0,
        height: 40.0,
      ),
    ),
  ];
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
              'Atharva',
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
                    image: AssetImage('assets/${widget.postNo}.jpeg'),
                    fit: BoxFit.fitWidth)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CommentsScreen()));
                  },
                  icon: Icon(
                    Icons.comment,
                    color: Colors.white,
                    size: 30,
                  )),
              FlutterFeedReaction(
                reactions: _reactions,
                dragSpace: 50.0,
                dragStart: 100.0,
                onReactionSelected: (val) {
                  print(val.id);

                  setState(() {
                    vals = val.id;
                    reacted = true;
                  });
                },
                onPressed: () {
                  print("Pressed");
                },
                prefix: (!reacted)
                    ? Image.asset(
                        'assets/emojies/none.png',
                        width: 24.0,
                        height: 24.0,
                      )
                    : reactionMedia[vals],
                suffix: Text("Like"),
                childAnchor: Alignment.topRight,
                portalAnchor: Alignment.bottomRight,
              ),
            ],
          )
        ],
      ),
    );
  }
}

// class PostCard extends StatelessWidget {
 
// }
