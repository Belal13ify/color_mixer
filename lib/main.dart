// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

double red = 0;
double green = 0;
double blue = 0;
double op = 1;

String redhex = red.toInt().toRadixString(16);
String greenhex = green.toInt().toRadixString(16);
String bluehex = blue.toInt().toRadixString(16);

String hexColor = redhex + greenhex + bluehex;

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Color Mixer"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 170,
                  height: 170,
                  color: Color.fromRGBO(
                      red.toInt(),
                      green.toInt(),
                      blue.toInt(),
                      op),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  red.toInt().toRadixString(16) +
                      green
                          .toInt()
                          .toRadixString(16) +
                      blue
                          .toInt()
                          .toRadixString(16),
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight:
                          FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                    mainAxisAlignment:
                        MainAxisAlignment.center,
                    children: [
                      Text(
                        'Red:',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight:
                                FontWeight.bold,
                            color: Colors.red),
                      ),
                      Slider(
                          value: red,
                          min: 0,
                          max: 255,
                          onChanged:
                              (double newRed) {
                            setState(() {
                              red = newRed;
                            });
                          }),
                      Text(
                        '${red.toInt()}',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight:
                                FontWeight.bold,
                            color: Colors.red),
                      ),
                    ]),
                SizedBox(
                  height: 10,
                ),
                Row(
                    mainAxisAlignment:
                        MainAxisAlignment.center,
                    children: [
                      Text(
                        'Green:',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight:
                                FontWeight.bold,
                            color: Colors.green),
                      ),
                      Slider(
                          value: green,
                          min: 0,
                          max: 255,
                          onChanged:
                              (double newGreen) {
                            setState(() {
                              green = newGreen;
                            });
                          }),
                      Text(
                        '${green.toInt()}',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight:
                                FontWeight.bold,
                            color: Colors.green),
                      ),
                    ]),
                SizedBox(
                  height: 10,
                ),
                Row(
                    mainAxisAlignment:
                        MainAxisAlignment.center,
                    children: [
                      Text(
                        'Blue:',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight:
                                FontWeight.bold,
                            color: Colors.blue),
                      ),
                      Slider(
                          value: blue,
                          min: 0,
                          max: 255,
                          onChanged:
                              (double newBlue) {
                            setState(() {
                              blue = newBlue;
                            });
                          }),
                      Text(
                        '${blue.toInt()}',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight:
                                FontWeight.bold,
                            color: Colors.blue),
                      ),
                    ]),
                SizedBox(
                  height: 10,
                ),
                Row(
                    mainAxisAlignment:
                        MainAxisAlignment.center,
                    children: [
                      Text(
                        'Opacity:',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight:
                                FontWeight.bold,
                            color: Colors.black),
                      ),
                      Slider(
                          value: op,
                          min: 0,
                          max: 1,
                          onChanged: (double
                              newOpacity) {
                            setState(() {
                              op = newOpacity;
                            });
                          }),
                      Text(
                        '${op.toStringAsFixed(2)}',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight:
                                FontWeight.bold,
                            color: Colors.blue),
                      ),
                    ]),
              ]),
        ),
      ),
    );
  }
}
