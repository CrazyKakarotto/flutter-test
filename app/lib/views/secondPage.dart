import 'package:flutter/material.dart';
import '../components/input.dart';
class SecondPage extends StatefulWidget {
  @override
  SecondPageState createState() => new SecondPageState();
}

class SecondPageState extends State<SecondPage> {
  TextEditingController controller;
  String active = 'test';
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('界面二')
      ),
      body: new Center(
        child: new Column(
          children: <Widget>[
            new TextField(
              controller: controller,
              onChanged: _onChanged,
            ),
            new Input(active: active)
          ],
        )
      )
    );
  }
  void _onChanged(String value) {
    setState(() {
      active = value;
    });
  }
}