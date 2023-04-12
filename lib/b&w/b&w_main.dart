import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'bwJames.dart';
import 'bwjames2.dart';

void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: darkTheme,
    themeMode: ThemeMode.system,
    home: BwRoom(
    ),
  ));
}
  final darkTheme = ThemeData(
    brightness: Brightness.light,
    primaryColorDark: Colors.grey,
    primaryColorLight: Colors.black,
    scaffoldBackgroundColor: Colors.grey,
    appBarTheme: AppBarTheme(
      color: Colors.black26,
    ),
    primaryColor: Colors.lightBlue,
    primarySwatch: Colors.red,
    colorScheme: (

    const ColorScheme.light(
      primary: Colors.black,
      onPrimary: Colors.grey,
      secondary: Colors.black38,
    )
    ),
    backgroundColor: Colors.yellowAccent,
    textTheme: TextTheme(
        subtitle1: TextStyle(
          color: Colors.green,
        )
    )
);


class BwRoom extends StatelessWidget {
  BwRoom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: height * 0.3,
              decoration:  BoxDecoration(
                borderRadius:
                BorderRadius.only(bottomLeft: Radius.circular(50)),
                color: Theme.of(context).primaryColorDark,
              ),

            ),
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              child: AppBar(
                toolbarHeight: kToolbarHeight+50,
                elevation: 0,
                title: Text('Select Room', style: TextStyle(
                    fontSize: 30,color: Colors.white
                ),),
                backgroundColor: Colors.transparent,
                centerTitle: true,
                leading: Icon(Icons.arrow_back,size: 30,color: Colors.white,),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(20, 180, 20, 0),
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.19,
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      elevation: 4,
                      // color: Theme.of(context).colorScheme.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ///rating
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                                child: Row(
                                  children: const [
                                    Text(
                                      '4.6',
                                      style: TextStyle(
                                          fontSize: 35, color: Colors.black),
                                    ),
                                    Text('/5',
                                        style: TextStyle(
                                            fontSize: 25, color: Colors.black)),
                                  ],
                                ),
                              ),

                              /// Based
                              const Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                                child: Text(
                                  'Based on 125 Review',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black),
                                ),
                              ),

                              /// Star
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 5, 10, 0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 15, 10, 0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: LinearPercentIndicator(
                                    width: 90,
                                    leading: const Text(
                                      '5 Star',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.black),
                                    ),
                                    linearGradient:
                                    const LinearGradient(colors: [
                                      Colors.orangeAccent,
                                      Colors.orange,
                                    ]),
                                    percent: 1.0,
                                    lineHeight: 7,
                                    animationDuration: 1500,
                                    animation: true,
                                    barRadius: Radius.circular(30),
                                  ),
                                ),
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: LinearPercentIndicator(
                                    width: 90,
                                    leading: const Text(
                                      '4 Star',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.black),
                                    ),
                                    linearGradient:
                                    const LinearGradient(colors: [
                                      Colors.orangeAccent,
                                      Colors.orange,
                                    ]),
                                    percent: 0.7,
                                    lineHeight: 7,
                                    animationDuration: 1500,
                                    animation: true,
                                    barRadius: Radius.circular(30),
                                  ),
                                ),
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: LinearPercentIndicator(
                                    width: 90,
                                    leading: const Text(
                                      '3 Star',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.black),
                                    ),
                                    linearGradient:
                                    const LinearGradient(colors: [
                                      Colors.orangeAccent,
                                      Colors.orange,
                                    ]),
                                    percent: 0.5,
                                    lineHeight: 7,
                                    animationDuration: 1500,
                                    animation: true,
                                    barRadius: Radius.circular(30),
                                  ),
                                ),
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: LinearPercentIndicator(
                                    width: 90,
                                    leading: const Text(
                                      '2 Star',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.black),
                                    ),
                                    linearGradient:
                                    const LinearGradient(colors: [
                                      Colors.orangeAccent,
                                      Colors.orange,
                                    ]),
                                    percent: 0.2,
                                    lineHeight: 7,
                                    animationDuration: 1500,
                                    animation: true,
                                    barRadius: Radius.circular(30),
                                  ),
                                ),
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: LinearPercentIndicator(
                                    width: 90,
                                    leading: const Text(
                                      '1 Star',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.black),
                                    ),
                                    linearGradient:
                                    const LinearGradient(colors: [
                                      Colors.orangeAccent,
                                      Colors.orange,
                                    ]),
                                    percent: 0.1,
                                    lineHeight: 7,
                                    animationDuration: 1500,
                                    animation: true,
                                    barRadius: Radius.circular(30),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: BwJames(),
                  ),
                  Container(
                    child: BwJamees(),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

