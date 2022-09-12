import 'package:flutter/material.dart';

class ResultBmiScreen extends StatelessWidget {
  final bool isMale;
  final double result;
  final int age;
  final String msg;

  ResultBmiScreen(
      {required this.result,
      required this.isMale,
      required this.age,
      required this.msg});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("BMI Result"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.pink, Colors.red, Colors.indigo])),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Your Result ",
                  style: TextStyle(fontSize: 50, color: Colors.white),
                ),
                SizedBox(
                  height: 60,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      " $msg",
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      child: Text(
                        "Your BMI : ${result.round()}",
                        style: TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    // Text(
                    //   "BMI Categories:",
                    //   style: TextStyle(fontSize: 25, color: Colors.white),
                    // ),
                    // Text(
                    //   "Underweight = <18.5",
                    //   style: TextStyle(fontSize: 20, color: Colors.white),
                    // ),
                    // Text(
                    //   "Normal weight = 18.5–24.9",
                    //   style: TextStyle(fontSize: 20, color: Colors.white),
                    // ),
                    // Text(
                    //   "Overweight = 25–29.9",
                    //   style: TextStyle(fontSize: 20, color: Colors.white),
                    // ),
                    // Text(
                    //   "Obesity = BMI of 30 or greater",
                    //   style: TextStyle(fontSize: 20, color: Colors.white),
                    // ),
//
//
//
//
//
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
