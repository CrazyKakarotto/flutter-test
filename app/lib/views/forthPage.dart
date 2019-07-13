import 'package:flutter/material.dart';
class ForthPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text('导航页面')),
      body: Center(
        child: RaisedButton(
          child: Text('查看商品详情'),
          onPressed: () {
            Navigator.push(context, new MaterialPageRoute(
              builder: (context) => new SecondScreen())
            );
          },
        )
      )
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('哈哈哈商品详情页面')),
      body: Center(
        child: RaisedButton(
          child: Text('返回'),
          onPressed: () {
            Navigator.pop(context);
          },
        )
      )
    );
  }
}