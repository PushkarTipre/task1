import 'package:flutter/material.dart';

class firstScreen extends StatelessWidget {
  late final TextEditingController controller;

  final num1 = TextEditingController();
  final num2 = TextEditingController();
  final ans = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    int result;
    int answer;
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        child: Column(
          children: [
            SizedBox(
              height: 15.0,
            ),
            Text(
              'Calculator',
              style: TextStyle(fontSize: 30.0, color: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: num1,
                decoration: InputDecoration(
                  labelText: 'Number 1 ',
                  labelStyle:
                      TextStyle(fontSize: 15, color: Colors.grey.shade400),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: num2,
                decoration: InputDecoration(
                  labelText: 'Number 2 ',
                  labelStyle:
                      TextStyle(fontSize: 15, color: Colors.grey.shade400),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: ans,
                decoration: InputDecoration(
                  labelText: 'Answer ',
                  labelStyle:
                      TextStyle(fontSize: 15, color: Colors.grey.shade400),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  answer = int.parse(num1.text) + int.parse(num2.text);
                  result = answer;
                  ans.text = result.toString();
                  debugPrint('presesd');
                },
                child: Container(
                  alignment: Alignment.center,
                  height: size.height / 14,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Text(
                    'Add',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  answer = int.parse(num1.text) - int.parse(num2.text);
                  result = answer;
                  ans.text = result.toString();
                  debugPrint('presesd');
                },
                child: Container(
                  alignment: Alignment.center,
                  height: size.height / 14,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Text(
                    'Substract',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  answer = int.parse(num1.text) * int.parse(num2.text);
                  result = answer;
                  ans.text = result.toString();
                  debugPrint('presesd');
                },
                child: Container(
                  alignment: Alignment.center,
                  height: size.height / 14,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Text(
                    'Multiply',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Flexible(
              child: GestureDetector(
                onTap: () {
                  answer =
                      (int.parse(num1.text) / int.parse(num2.text)).floor();
                  result = answer;
                  ans.text = result.toString();
                  debugPrint('presesd');
                },
                child: Container(
                  alignment: Alignment.center,
                  height: size.height / 14,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Text(
                    'Divide',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
