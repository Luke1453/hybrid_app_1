import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Welcome to Flutter',
      theme: ThemeData(
        primaryColor: Colors.white
      ),
      home: buttonView()
    );

  }
}

class buttonView extends StatefulWidget {
  @override
  _buttonViewState createState() => _buttonViewState();
}

class _buttonViewState extends State<buttonView> {
  bool box1ToggleColor = false;
  bool box2ToggleColor = false;
  bool box3ToggleColor = false;
  bool box4ToggleColor = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('1st Exercise')
      ),
      body: Container(
        padding: const EdgeInsets.all(32),
        child:
          Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(child: Text("Change 1st Box Color"), onPressed: (){setState(() {
                  box1ToggleColor = !box1ToggleColor;
                });}),
                Container(
                  width: 125,
                  height: 50,
                  child: Center(child: Text("1st box")),
                  color: box1ToggleColor ? Colors.lightGreen : Colors.red,
                ),
              ],
            ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(child: Text("Change 2nd Box Color"), onPressed: (){setState(() {
                    box2ToggleColor = !box2ToggleColor;
                  });}),
                  Container(
                    width: 125,
                    height: 50,
                    child: Center(child: Text("2nd box")),
                    color: box2ToggleColor ? Colors.black : Colors.white,
                  ),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(child: Text("Change 3rd Box Color"), onPressed: (){setState(() {
                    box3ToggleColor = !box3ToggleColor;
                  });}),
                  Container(
                    width: 125,
                    height: 50,
                    child: Center(child: Text("3rd box")),
                    color: box3ToggleColor ? Colors.greenAccent : Colors.orange,
                  ),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(child: Text("Change 4th Box Color"), onPressed: (){setState(() {
                    box4ToggleColor = !box4ToggleColor;
                  });}),
                  Container(
                    width: 125,
                    height: 50,
                    child: Center(child: Text("4th box")),
                    color: box4ToggleColor ? Colors.indigo : Colors.lime,
                  ),
                ],
              ),
          ],),
      )
    );
  }
}