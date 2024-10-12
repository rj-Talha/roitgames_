// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:roitgames_/intocolumn.dart';
import 'package:roitgames_/main.dart';

class SlidingPage extends StatefulWidget {
  const SlidingPage({super.key});

  @override
  State<SlidingPage> createState() => _SlidingPageState();
}

class _SlidingPageState extends State<SlidingPage> {
  String image = 'images/Roitlogo1.png';
  Color myColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 70,
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Padding(
            padding: const EdgeInsets.only(left: 50.0),
            child: Title(
              color: myColor,
              child: TextButton(
                onHover: (value) {
                  if (value) {
                    setState(() {
                      myColor = Colors.red;
                    });
                  } else {
                    setState(() {
                      myColor = Colors.black;
                    });
                  }
                },
                style: ButtonStyle(
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return HomePage();
                      },
                    ),
                  );
                },
                child: SizedBox(
                  width: 140,
                  height: 50,
                  child: Row(
                    children: [
                      Image.asset(
                        'images/RoitPunch1.png',
                        color: myColor,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Column(
                          children: [
                            Text(
                              'ROIT',
                              style: TextStyle(
                                color: myColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'GAMES',
                              style: TextStyle(
                                color: myColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.arrow_drop_up,
                        color: myColor,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          actions: [
            TextButton(
              style: ButtonStyle(
                elevation: WidgetStatePropertyAll(2),
                fixedSize: WidgetStatePropertyAll(Size(5, 5)),
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return HomePage();
                  },
                ));
              },
              child: Icon(
                size: 20,
                Icons.close,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: OrientedMultiChild(
            childrenBuilder: (context, orientation) {
              return [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Wrap(
                    children: [
                      SizedBox(width: 75),
                      Column(
                        children: [
                          TextButton(
                            style: ButtonStyle(
                                shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                backgroundColor:
                                    WidgetStatePropertyAll(Colors.grey),
                                fixedSize: WidgetStatePropertyAll(
                                  Size(150, 45),
                                )),
                            onPressed: () {},
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'GAMES',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            onHover: (value) {
                              if (value)
                                setState(() {
                                  image = 'images/LOL.png';
                                });
                              else {
                                setState(() {
                                  image = 'images/Roitlogo1.png';
                                });
                              }
                            },
                            style: ButtonStyle(
                                shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                fixedSize: WidgetStatePropertyAll(
                                  Size(150, 45),
                                )),
                            onPressed: () {},
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'LEAGUE OF LEGENDS',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            onHover: (value) {
                              if (value)
                                setState(() {
                                  image = 'images/Valorant1.png';
                                });
                              else {
                                setState(() {
                                  image = 'images/Roitlogo1.png';
                                });
                              }
                            },
                            style: ButtonStyle(
                                shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                fixedSize: WidgetStatePropertyAll(
                                  Size(150, 45),
                                )),
                            onPressed: () {},
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'VALORANT',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            onHover: (value) {
                              if (value)
                                setState(() {
                                  image = 'images/TeamFightTactics1.png';
                                });
                              else {
                                setState(() {
                                  image = 'images/Roitlogo1.png';
                                });
                              }
                            },
                            style: ButtonStyle(
                                shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                fixedSize: WidgetStatePropertyAll(
                                  Size(150, 45),
                                )),
                            onPressed: () {},
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'TEAM FIGHT TACTICS',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            onHover: (value) {
                              if (value)
                                setState(() {
                                  image = 'images/RUNETERRA.png';
                                });
                              else {
                                setState(() {
                                  image = 'images/Roitlogo1.png';
                                });
                              }
                            },
                            style: ButtonStyle(
                                shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                fixedSize: WidgetStatePropertyAll(
                                  Size(150, 45),
                                )),
                            onPressed: () {},
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'LEGENDS OF RUNETERRA',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            onHover: (value) {
                              if (value)
                                setState(() {
                                  image = 'images/WILDRIFT.png';
                                });
                              else {
                                setState(() {
                                  image = 'images/Roitlogo1.png';
                                });
                              }
                            },
                            style: ButtonStyle(
                                shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                fixedSize: WidgetStatePropertyAll(
                                  Size(150, 45),
                                )),
                            onPressed: () {},
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'LOL:WILD RIFT',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 65),
                      Column(
                        children: [
                          TextButton(
                            style: ButtonStyle(
                                shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                backgroundColor:
                                    WidgetStatePropertyAll(Colors.grey),
                                fixedSize: WidgetStatePropertyAll(
                                  Size(150, 45),
                                )),
                            onPressed: () {},
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'FORGE',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            onHover: (value) {
                              if (value)
                                setState(() {
                                  image = 'images/CONVRGENCE.png';
                                });
                              else {
                                setState(() {
                                  image = 'images/Roitlogo1.png';
                                });
                              }
                            },
                            style: ButtonStyle(
                                shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                fixedSize: WidgetStatePropertyAll(
                                  Size(150, 45),
                                )),
                            onPressed: () {},
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'CONV/RGENCE',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            onHover: (value) {
                              if (value)
                                setState(() {
                                  image = 'images/HEXTECH.png';
                                });
                              else {
                                setState(() {
                                  image = 'images/Roitlogo1.png';
                                });
                              }
                            },
                            style: ButtonStyle(
                                shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                fixedSize: WidgetStatePropertyAll(
                                  Size(150, 45),
                                )),
                            onPressed: () {},
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'HEXTECH MAYHEM',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            onHover: (value) {
                              if (value)
                                setState(() {
                                  image = 'images/TheMageSeeker1.png';
                                });
                              else {
                                setState(() {
                                  image = 'images/Roitlogo1.png';
                                });
                              }
                            },
                            style: ButtonStyle(
                                shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                fixedSize: WidgetStatePropertyAll(
                                  Size(150, 45),
                                )),
                            onPressed: () {},
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'THE MAGESEEKER',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            onHover: (value) {
                              if (value)
                                setState(() {
                                  image = 'images/RuinedKing1.png';
                                });
                              else {
                                setState(() {
                                  image = 'images/Roitlogo1.png';
                                });
                              }
                            },
                            style: ButtonStyle(
                                shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                fixedSize: WidgetStatePropertyAll(
                                  Size(150, 45),
                                )),
                            onPressed: () {},
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'RUINED KING',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            onHover: (value) {
                              if (value)
                                setState(() {
                                  image = 'images/SongOfNunu1.png';
                                });
                              else {
                                setState(() {
                                  image = 'images/Roitlogo1.png';
                                });
                              }
                            },
                            style: ButtonStyle(
                                shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                fixedSize: WidgetStatePropertyAll(
                                  Size(150, 45),
                                )),
                            onPressed: () {},
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'SONG OF NUNU',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            onHover: (value) {
                              if (value)
                                setState(() {
                                  image = 'images/FORGEGAMES.png';
                                });
                              else {
                                setState(() {
                                  image = 'images/Roitlogo1.png';
                                });
                              }
                            },
                            style: ButtonStyle(
                                shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                fixedSize: WidgetStatePropertyAll(
                                  Size(150, 45),
                                )),
                            onPressed: () {},
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'ROIT FORGE GAMES',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            style: ButtonStyle(
                                shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                backgroundColor:
                                    WidgetStatePropertyAll(Colors.grey),
                                fixedSize: WidgetStatePropertyAll(
                                  Size(150, 45),
                                )),
                            onPressed: () {},
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'ESPORTS',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            onHover: (value) {
                              if (value)
                                setState(() {
                                  image = 'images/LOLEsports1.png';
                                });
                              else {
                                setState(() {
                                  image = 'images/Roitlogo1.png';
                                });
                              }
                            },
                            style: ButtonStyle(
                                shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                fixedSize: WidgetStatePropertyAll(
                                  Size(150, 45),
                                )),
                            onPressed: () {},
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'LOL ESPORTS',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            onHover: (value) {
                              if (value)
                                setState(() {
                                  image = 'images/VALORANTESPORTS.png';
                                });
                              else {
                                setState(() {
                                  image = 'images/Roitlogo1.png';
                                });
                              }
                            },
                            style: ButtonStyle(
                                shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                fixedSize: WidgetStatePropertyAll(
                                  Size(150, 45),
                                )),
                            onPressed: () {},
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'VALORANT ESPORTS',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 65),
                      Column(
                        children: [
                          TextButton(
                            style: ButtonStyle(
                                shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                backgroundColor:
                                    WidgetStatePropertyAll(Colors.grey),
                                fixedSize: WidgetStatePropertyAll(
                                  Size(150, 45),
                                )),
                            onPressed: () {},
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'ENTERTAINMENT',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            onHover: (value) {
                              if (value)
                                setState(() {
                                  image = 'images/ARCANE.png';
                                });
                              else {
                                setState(() {
                                  image = 'images/Roitlogo1.png';
                                });
                              }
                            },
                            style: ButtonStyle(
                                shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                fixedSize: WidgetStatePropertyAll(
                                  Size(150, 45),
                                )),
                            onPressed: () {},
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'ARCANE',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            onHover: (value) {
                              if (value)
                                setState(() {
                                  image = 'images/Universe1.png';
                                });
                              else {
                                setState(() {
                                  image = 'images/Roitlogo1.png';
                                });
                              }
                            },
                            style: ButtonStyle(
                                shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                fixedSize: WidgetStatePropertyAll(
                                  Size(150, 45),
                                )),
                            onPressed: () {},
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'UNIVERSE',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            onHover: (value) {
                              if (value)
                                setState(() {
                                  image = 'images/RoitMusic1.png';
                                });
                              else {
                                setState(() {
                                  image = 'images/Roitlogo1.png';
                                });
                              }
                            },
                            style: ButtonStyle(
                                shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                fixedSize: WidgetStatePropertyAll(
                                  Size(150, 45),
                                )),
                            onPressed: () {},
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'ROIT GAMES MUSIC',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            style: ButtonStyle(
                                shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                backgroundColor:
                                    WidgetStatePropertyAll(Colors.grey),
                                fixedSize: WidgetStatePropertyAll(
                                  Size(150, 45),
                                )),
                            onPressed: () {},
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'BUSINESS',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            onHover: (value) {
                              if (value)
                                setState(() {
                                  image = 'images/ROITGAMES.png';
                                });
                              else {
                                setState(() {
                                  image = 'images/Roitlogo1.png';
                                });
                              }
                            },
                            style: ButtonStyle(
                                shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                fixedSize: WidgetStatePropertyAll(
                                  Size(150, 45),
                                )),
                            onPressed: () {},
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'ROIT GAMES',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            onHover: (value) {
                              if (value)
                                setState(() {
                                  image = 'images/RoitMerch1.png';
                                });
                              else {
                                setState(() {
                                  image = 'images/Roitlogo1.png';
                                });
                              }
                            },
                            style: ButtonStyle(
                                shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                fixedSize: WidgetStatePropertyAll(
                                  Size(150, 45),
                                )),
                            onPressed: () {},
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'ROIT MERCH',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            onHover: (value) {
                              if (value)
                                setState(() {
                                  image = 'images/RoitMobile1.png';
                                });
                              else {
                                setState(() {
                                  image = 'images/Roitlogo1.png';
                                });
                              }
                            },
                            style: ButtonStyle(
                                shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                fixedSize: WidgetStatePropertyAll(
                                  Size(150, 45),
                                )),
                            onPressed: () {},
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'ROIT MOBILE',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            style: ButtonStyle(
                                shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                fixedSize: WidgetStatePropertyAll(
                                  Size(150, 45),
                                )),
                            onHover: (value) {
                              if (value)
                                setState(() {
                                  image = 'images/RoitSupport1.png';
                                });
                              else {
                                setState(() {
                                  image = 'images/Roitlogo1.png';
                                });
                              }
                            },
                            onPressed: () {},
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'ROIT SUPPORT',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 60),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 80.0),
                        child: SizedBox(
                          height: 600,
                          width: 550,
                          child: Image.asset(
                            image,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ];
            },
          ),
        ),
      ),
    );
  }
}
