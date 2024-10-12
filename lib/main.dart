// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:roitgames_/orientation.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:roitgames_/slidepage.dart';
import 'package:roitgames_/textButton.dart';

void main() async {
  runApp(
    const MaterialApp(
      title: 'Flutter Demo',
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double height = 0;
  Color myColor = Colors.white;
  Color myColor1 = Colors.white;
  Color myColor2 = Colors.white;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, size) {
      return CustomOrientationBuilder(builder: (context, orientation) {
        return Container(
          width: size.maxWidth,
          height: size.maxHeight,
          child: Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              backgroundColor: WidgetStateColor.resolveWith(
                (state) {
                  if (state.contains(WidgetState.scrolledUnder)) {
                    return Colors.black;
                  }
                  return Colors.transparent;
                },
              ),
              leadingWidth: 220,
              leading: LayoutBuilder(builder: (context, size) {
                return Padding(
                  padding: const EdgeInsets.only(left: 50.0),
                  child: TextButton(
                    style: ButtonStyle(
                      shape: WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    onHover: (value) {
                      if (value) {
                        setState(() {
                          myColor = Colors.red;
                        });
                      } else {
                        setState(() {
                          myColor = Colors.white;
                        });
                      }
                    },
                    onPressed: () {
                      showGeneralDialog(
                        transitionDuration: Duration(milliseconds: 1000),
                        pageBuilder: (context, animation, aanimation) {
                          return Container(
                            height: 500 * animation.value,
                            child: SlidingPage(),
                          );
                        },
                        context: context,
                      );
                    },
                    child: Row(
                      children: [
                        Image.asset(
                          'images/RoitPunch.png',
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
                        Icon(
                          Icons.arrow_drop_down,
                          color: myColor,
                        ),
                      ],
                    ),
                  ),
                );
              }),
              title: LayoutBuilder(
                builder: (context, size) {
                  if (orientation == Orientation.landscape) {
                    return Row(
                      children: [
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: IconButton(
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
                            icon: Image.asset('images./RoitCircle.png'),
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
                                WidgetStatePropertyAll(Colors.transparent),
                          ),
                          onHover: (value) {},
                          onPressed: () {},
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                Text(
                                  'WHO ARE WE',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.grey,
                                ),
                              ],
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
                                WidgetStatePropertyAll(Colors.transparent),
                          ),
                          onPressed: () {},
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                Text(
                                  'WORK WITH US',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.grey,
                                ),
                              ],
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
                                WidgetStatePropertyAll(Colors.transparent),
                          ),
                          onPressed: () {},
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'News',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  } else {
                    return Scaffold(
                      backgroundColor: Colors.transparent,
                    );
                  }
                },
              ),
              actions: [
                if (orientation == Orientation.landscape)
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Container(
                          height: 35,
                          width: 200,
                          margin: EdgeInsets.symmetric(horizontal: 8),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search',
                              hintStyle: TextStyle(color: Colors.white70),
                              prefixIcon:
                                  Icon(Icons.search, color: Colors.white),
                              filled: true,
                              fillColor: Colors.white24,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: TextButton(
                          style: ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(Colors.red),
                          ),
                          onPressed: () {},
                          child: Text(
                            'SIGN IN',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
            body: LayoutBuilder(
              builder: (context, size) {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: size.maxHeight,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/roit.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              SizedBox(height: 30),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Column(
                                  children: const [
                                    SizedBox(width: 500),
                                    Text(
                                      'Anima',
                                      style: TextStyle(
                                        color: Colors.greenAccent,
                                        fontSize: 55,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'Squad',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 55,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 30),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 100),
                                  child: Text(
                                    'Anima Squad reporting for duty!',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 70.0),
                                  child: Text(
                                    'It’s up to you, rookie. Join the squad and leap into Swarm,',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 140.0),
                                  child: Text(
                                    'an explosive new game mode.',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 200.0, top: 30),
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                          WidgetStatePropertyAll(Colors.blue),
                                      shape: WidgetStatePropertyAll(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(22),
                                        ),
                                      ),
                                      fixedSize: WidgetStatePropertyAll(
                                        Size(220, 60),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          'images/RightArrow.png',
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          'Play now',
                                          style: TextStyle(
                                            fontSize: 25,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 100),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Games',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 60,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 80),
                      Column(
                        children: [
                          Wrap(
                            children: [
                              Flexible(
                                  child: IconButton(
                                style: ButtonStyle(
                                    fixedSize:
                                        WidgetStatePropertyAll(Size(600, 600))),
                                onPressed: () {},
                                icon: Image.asset(
                                  'images/CONVRGENCE.png',
                                  fit: BoxFit.contain,
                                ),
                              )),
                              SizedBox(width: 20),
                              Flexible(
                                  child: IconButton(
                                style: ButtonStyle(
                                    fixedSize:
                                        WidgetStatePropertyAll(Size(600, 600))),
                                onPressed: () {},
                                icon: Image.asset(
                                  'images/Valorant1.png',
                                  fit: BoxFit.contain,
                                ),
                              )),
                            ],
                          ),
                          SizedBox(
                              height: 20), // Optional: Add spacing between rows
                          Wrap(
                            children: [
                              Flexible(
                                  child: IconButton(
                                style: ButtonStyle(
                                    fixedSize:
                                        WidgetStatePropertyAll(Size(600, 600))),
                                onPressed: () {},
                                icon: Image.asset(
                                  'images/HEXTECH.png',
                                  fit: BoxFit.contain,
                                ),
                              )),
                              SizedBox(width: 20),
                              Flexible(
                                  child: IconButton(
                                style: ButtonStyle(
                                    fixedSize:
                                        WidgetStatePropertyAll(Size(600, 600))),
                                onPressed: () {},
                                icon: Image.asset(
                                  'images/TheMageSeeker1.png',
                                  fit: BoxFit.contain,
                                ),
                              )),
                            ],
                          ),
                          SizedBox(
                              height: 20), // Optional: Add spacing between rows
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'images/RUNETERRA.png',
                              fit: BoxFit.contain,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 100),
                      Wrap(
                        children: [
                          Container(
                            color: Colors.white,
                            width: size.maxWidth,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Center(
                                    child: Column(
                                      children: [
                                        SizedBox(height: 60),
                                        Text(
                                          "We're hiring",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 60,
                                          ),
                                        ),
                                        SizedBox(height: 25),
                                        Text(
                                          "Team up with Riot to forge your path and craft unforgettable experiences for players",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                          ),
                                        ),
                                        SizedBox(height: 40),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Expanded(
                                              child: TextButton(
                                                style: ButtonStyle(
                                                  shape: WidgetStatePropertyAll(
                                                    RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                ),
                                                onPressed: () {},
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      '100',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 50,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    Text(
                                                      'Open Position',
                                                      style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 30,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 40),
                                            Expanded(
                                              child: TextButton(
                                                style: ButtonStyle(
                                                  shape: WidgetStatePropertyAll(
                                                    RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                ),
                                                onPressed: () {},
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      '25',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 50,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    Text(
                                                      'Offices',
                                                      style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 30,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 50),
                                        TextButton(
                                          style: ButtonStyle(
                                            fixedSize: WidgetStatePropertyAll(
                                                Size(200, 55)),
                                            backgroundColor:
                                                WidgetStatePropertyAll(
                                                    Colors.red),
                                          ),
                                          onPressed: () {},
                                          child: Text(
                                            'Explore Careers',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 55),
                                      ],
                                    ),
                                  ),
                                ),
                                if (orientation == Orientation.landscape)
                                  Flexible(
                                    child: SizedBox(
                                      child: Image.asset(
                                        'images/RoitOffice.png',
                                        height: size.maxHeight,
                                        width: size.maxWidth,
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            TextButton(
                              onHover: (value) {
                                if (value) {
                                  setState(() {
                                    myColor1 = Colors.red;
                                  });
                                } else {
                                  setState(() {
                                    myColor1 = Colors.white;
                                  });
                                }
                              },
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
                              child: Image.asset(
                                'images/RoitPunch.png',
                                color: myColor1,
                              ),
                            ),
                            Expanded(
                              child: Wrap(
                                children: [
                                  MyTextButton(text: 'PRESS'),
                                  MyTextButton(text: 'SECURITY'),
                                  MyTextButton(text: 'LEGAL'),
                                  MyTextButton(text: 'LEADERSHIP'),
                                  MyTextButton(text: 'CANDIDATE PRIVACY'),
                                  MyTextButton(text: 'TERMS OF SERVICE'),
                                  MyTextButton(text: 'PRIVACY NOTICE'),
                                  MyTextButton(text: 'PLAYER SUPPORT'),
                                  MyTextButton(text: 'E-VERIFY'),
                                  MyTextButton(text: 'ACCESSIBILITY'),
                                ],
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                LineAwesome.twitter,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                LineAwesome.instagram,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                LineAwesome.linkedin_in,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                LineAwesome.facebook_f,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.tiktok_rounded,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                FontAwesome.youtube,
                                color: Colors.white,
                                size: 30,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Divider(
                        color: Colors.white,
                        height: 5,
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            MyTextButton(text: 'Cookies Preferences'),
                            Text(
                              '|',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(width: 10),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                '© 2024 Riot Games, Inc. All Rights Reserved.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                            Spacer(),
                            if (orientation == Orientation.landscape)
                              TextButton(
                                onHover: (value) {
                                  if (value) {
                                    setState(() {
                                      myColor2 = Colors.red;
                                    });
                                  } else {
                                    setState(() {
                                      myColor2 = Colors.white;
                                    });
                                  }
                                },
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
                                child: Row(
                                  children: [
                                    Text(
                                      'TO THE SURFACE',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Icon(
                                      Icons.arrow_drop_up,
                                      color: myColor2,
                                    ),
                                  ],
                                ),
                              )
                          ],
                        ),
                      ),
                      SizedBox(height: 50),
                    ],
                  ),
                );
              },
            ),
            backgroundColor: Color.fromARGB(220, 0, 0, 0),
          ),
        );
      });
    });
  }
}
