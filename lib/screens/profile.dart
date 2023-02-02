import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                height: 200,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('./images/avatar.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'ATHERS',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Text(
                      'Member for 2 Month',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: 300,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Color.fromRGBO(217, 217, 217, 1),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Card(
                              child: Image.asset(
                                './images/target.png',
                                height: 50,
                                width: 50,
                              ),
                              color: Colors.black,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "Achievements",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            buildCard(
                                './images/streak3.png', "10 Days Challenge"),
                            buildCard(
                                './images/streak1.png', "20 Days Challenge"),
                            buildCard(
                                './images/streak2.png', "50 Days Challenge"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(15),
                  height: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        " Unlock Achievements",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                            child: new CircularPercentIndicator(
                              radius: 50.0,
                              animation: true,
                              animationDuration: 1200,
                              lineWidth: 15.0,
                              percent: 0.4,
                              center: new Text(
                                "45%",
                                style: new TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22.0),
                              ),
                              circularStrokeCap: CircularStrokeCap.butt,
                              backgroundColor: Color.fromRGBO(25, 180, 254, 1),
                              progressColor: Color.fromRGBO(204, 42, 8, 1.0),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
                            width: 200,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      '1300',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 40),
                                    ),
                                    Text(
                                      '/2000 ',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 18),
                                    ),
                                    Text(
                                      ' Steps',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 18),
                                    ),
                                  ],
                                ),
                                Container(
                                  width: 200,
                                  height: 1,
                                  color: Colors.white,
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                                ),
                                Text(
                                  "Complete this Challenge to get another Badges!",
                                  maxLines: 2,
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 13),
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
            ],
          ),
        ));
  }

  Widget buildCard(String s, String message) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(5),
      height: 140,
      width: 95,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: Colors.black,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(s),
              Padding(
                padding: const EdgeInsets.fromLTRB(7, 0, 0, 0),
                child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      message,
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
