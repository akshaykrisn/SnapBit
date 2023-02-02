import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ChallengePage extends StatefulWidget {
  const ChallengePage({Key? key}) : super(key: key);

  @override
  State<ChallengePage> createState() => _ChallengePage();
}

class _ChallengePage extends State<ChallengePage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(1.5, 0.0),
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.elasticIn,
  ));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  final List<String> days = <String>['10', '20', '50', '100'];
  final List<Image> streak_icon = <Image>[
    Image.asset('./images/medal.png'),
    Image.asset('./images/streak3.png'),
    Image.asset('./images/streak1.png'),
    Image.asset('./images/mountain.png')
  ];
  static const _iconTypes = <IconData>[
    MaterialCommunityIcons.trophy,
    MaterialCommunityIcons.medal_outline,
    MaterialCommunityIcons.trophy,
    MaterialCommunityIcons.crown_outline,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'My Challenges!',
          style: TextStyle(fontFamily: 'Poppins', color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
            height: 200,
            width: double.infinity,
            child: Card(
              color: Color.fromRGBO(231, 246, 242, 1),
              child: Stack(
                children: [
                  Positioned(
                    top: 30,
                    left: 10,
                    child: Text('The Future',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontFamily: 'Poppins')),
                  ),
                  Positioned(
                    top: 60,
                    left: 10,
                    child: Text('Of healthy',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontFamily: 'Poppins')),
                  ),
                  Positioned(
                      top: 90,
                      left: 10,
                      child: Text('Lifestyle',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontFamily: 'Poppins'))),
                  SlideTransition(
                    position: _offsetAnimation,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Image.asset('./images/man_cycling.png'),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 500,
            width: double.infinity,
            child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    height: 300,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                          onTap: () {},
                          child: Card(
                              color: Color.fromRGBO(165, 201, 202, 1),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(children: [
                                Expanded(
                                  flex: 3,
                                  child: Column(
                                    children: [
                                      CircleAvatar(
                                        child: CircleAvatar(
                                          radius: 50,
                                          child: streak_icon[index],
                                          backgroundColor: Colors.black12,
                                        ),
                                        radius: 50,
                                        backgroundColor:
                                            Color.fromRGBO(165, 201, 202, 1),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Container(
                                          margin:
                                              EdgeInsets.fromLTRB(10, 0, 10, 0),
                                          child: Row(
                                            children: [
                                              Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(days[index],
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontFamily:
                                                                  'Poppins')),
                                                      Text('-Days',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontFamily:
                                                                  'Poppins')),
                                                    ],
                                                  ),
                                                  Text('Challenge',
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontFamily:
                                                              'Poppins')),
                                                ],
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      20, 0, 0, 0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text('Friends Join',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontFamily:
                                                                  'Poppins')),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .fromLTRB(
                                                                0, 10, 0, 10),
                                                        child:
                                                            new LinearPercentIndicator(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width -
                                                              190,
                                                          animation: true,
                                                          lineHeight: 15.0,
                                                          animationDuration:
                                                              2500,
                                                          percent: int.parse(
                                                                  days[index]) /
                                                              100,
                                                          center: Text(
                                                              '${int.parse(days[index]).toString()}%'),
                                                          linearStrokeCap:
                                                              LinearStrokeCap
                                                                  .roundAll,
                                                          progressColor:
                                                              Colors.green,
                                                        ),
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            (int.parse(days[
                                                                        index]) *
                                                                    1)
                                                                .toString(),
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 15,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontFamily:
                                                                    'Poppins'),
                                                          ),
                                                          Text(
                                                            '/100',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 15,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontFamily:
                                                                    'Poppins'),
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                    child: Container(
                                        decoration: BoxDecoration(
                                            color: Color.fromRGBO(
                                                57, 91, 100, 0.5)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: CircleAvatar(
                                                  backgroundColor: Colors.black,
                                                  child: IconButton(
                                                      onPressed: () {},
                                                      icon: Icon(Icons.add))),
                                            ),
                                            Center(
                                                child: Text('JOIN CHALLENGE',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 20,
                                                        fontFamily:
                                                            'Poppins')) //custom text and style
                                                ),
                                          ],
                                        )))
                              ]))),
                    ),
                  );
                },
                itemCount: days.length),
          ),
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
