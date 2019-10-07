import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, ans = 0;
  final TextEditingController t1 = new TextEditingController(text: '0');
  final TextEditingController t2 = new TextEditingController(text: '0');
  void add() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      ans = num1 + num2;
    });
  }

  void sub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      ans = num1 - num2;
    });
  }

  void mul() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      ans = num1 * num2;
    });
  }

  void div() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      ans = num1 ~/ num2;
    });
  }

  void clear() {
    setState(() {
      t1.text = "0";
      t2.text = "0";
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Calculator'),
      ),
      body: new Container(
        padding: const EdgeInsets.all(25),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'Answer: $ans',
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20),
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Enter the Number 1"),
              controller: t1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Enter the Number 2"),
              controller: t2,
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text(
                    "+",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  onPressed: add,
                  color: Colors.blueAccent,
                ),
                new MaterialButton(
                  child: new Text(
                    "-",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  onPressed: sub,
                  color: Colors.blueAccent,
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text(
                    "x",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  onPressed: mul,
                  color: Colors.blueAccent,
                ),
                new MaterialButton(
                  child: new Text(
                    "/",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  onPressed: div,
                  color: Colors.blueAccent,
                ),
              ],
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 15),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Center(
                  child: new MaterialButton(
                    child: new Text(
                      "Clear",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: clear,
                    color: Colors.greenAccent,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
