import 'package:flutter/material.dart';
import 'package:just_ui_project/model/constants.dart';
import 'package:just_ui_project/model/socialButton.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ui Project',
      theme: ThemeData(
        fontFamily: "english",
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFDFE0E4),
        body: SafeArea(
            child: Column(
          children: <Widget>[
            Expanded(
              flex: 10,
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15)),
                        gradient: LinearGradient(
                            colors: [primaryColor, primaryColor2])),
                  ),
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Row(children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.arrow_back_rounded),
                              onPressed: () {},
                              iconSize: 35,
                              color: Colors.white,
                            )
                          ]),
                          SizedBox(height: 15),
                          Image.asset(
                            "assets/icons/app_icon.png",
                            height: 100,
                            width: 100,
                          ),
                          SizedBox(height: 20),
                          Text(
                              "A partner to help your through \n your treatment journey",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                letterSpacing: 1,
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: "english",
                              )),
                          SizedBox(height: 30),
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                Container(
                                    padding: EdgeInsets.only(
                                        left: 10,
                                        right: 10,
                                        top: 30,
                                        bottom: 30),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          Image.asset(
                                            "assets/icons/app_icon.png",
                                            height: 120,
                                            width: 120,
                                          ),
                                          SizedBox(height: 40),
                                          Text(
                                            "Welcome to [ APP Name ]",
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontFamily: "english",
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xff0B1D49)),
                                          ),
                                          SizedBox(height: 30),
                                          Text(
                                            "Build Native Apps on iOS and Android From a Single Codebase. Download and Build Today. Start With Fully-Customizable Widgets To Build Native Interfaces In Minutes. Open Source. Native Performance. Fast Development. Flexible UI.",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Color(0xff61656A)),
                                          ),
                                        ]))
                              ],
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
                flex: 1,
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  padding: EdgeInsets.all(12),
                  child: MaterialButton(
                    onPressed: () {},
                    color: Color(0xff1827A2),
                    child: Text("Get Started",
                        style: TextStyle(color: Colors.white)),
                  ),
                ))
          ],
        )));
  }
}
