import 'dart:math';

import 'package:flutter/material.dart';

import '../bmi_result/result_BMI.dart';

class BmiScreen extends StatefulWidget {
  @override
  _BmiScreenState createState() => _BmiScreenState();
}

bool isMale = true;
double hieght = 120.0;
double weight = 100.0;
int age = 20;
String gender = "";
String msg = "";

class _BmiScreenState extends State<BmiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
          backgroundColor: Colors.pink,
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: isMale ? Colors.pink : Colors.indigo[400]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.male, size: 100, color: Colors.white),
                            Text("Male",
                                style: TextStyle(
                                    fontSize: 25, color: Colors.white)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: !isMale ? Colors.pink : Colors.indigo[400]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.female, size: 100, color: Colors.white),
                            Text(
                              "Female",
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.indigo[400]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "HIGHT",
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            '${hieght.round()}',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w900,
                                color: Colors.white),
                          ),
                          Text(
                            "CM",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                      Slider(
                          activeColor: Colors.pink,
                          inactiveColor: Colors.white,
                          value: hieght,
                          max: 250.0,
                          min: 20.0,
                          onChanged: (value) {
                            setState(() {
                              hieght = value;
                            });
                          })
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.indigo[400]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Weight",
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "${weight.round()}",
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                          Text("Kg"),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                  backgroundColor: Colors.pink,
                                  splashColor: Colors.white,
                                  heroTag: "aaaa",
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  child: Icon(Icons.add)),
                              SizedBox(
                                width: 5,
                              ),
                              FloatingActionButton(
                                  backgroundColor: Colors.pink,
                                  splashColor: Colors.white,
                                  heroTag: "aaaa4",
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  child: Icon(Icons.remove)),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.indigo[400]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Age",
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "${age.round()}",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                  backgroundColor: Colors.pink,
                                  splashColor: Colors.white,
                                  heroTag: "aaa5a",
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  child: Icon(Icons.add)),
                              SizedBox(
                                width: 5,
                              ),
                              FloatingActionButton(
                                  backgroundColor: Colors.pink,
                                  splashColor: Colors.white,
                                  // elevation: 10,
                                  heroTag: "aaa8a",
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  child: Icon(Icons.remove)),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )),
            Container(
              color: Colors.pink,
              width: double.infinity,
              height: 50,
              child: TextButton(
                  style: ButtonStyle(),
                  onPressed: () {
                    double result = weight / pow(hieght / 100, 2);
                    if (result < 18.5) {
                      msg = "You are underweight";
                    } else if (result < 25) {
                      msg = 'Your body is fine';
                    } else if (result < 30) {
                      msg = 'You are overweight';
                    } else {
                      msg = 'You are obese';
                    }
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ResultBmiScreen(
                                  result: result,
                                  age: age,
                                  isMale: true,
                                  msg: msg,
                                )));
                  },
                  child: Text(
                    'CALCULATE',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
            ),
          ],
        ));
  }
}
