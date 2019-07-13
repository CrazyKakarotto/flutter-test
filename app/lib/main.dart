// 引入ui组件基础样式
import 'package:flutter/material.dart';
import './views/firstPage.dart';
import './views/secondPage.dart';
import './views/thirdPage.dart';
import './views/detail.dart';
import 'views/forthPage.dart';
import 'views/fifthPage.dart';

class Product{
  final String title; //商品标题
  final String description; // 商品描述
  Product(this.title, this.description);
}

// void main() {
//   runApp(MaterialApp(
//     title: '导航的数据传递和接受',
//     home: ProductList(
//       prodcuts: List.generate(20, (i) => Product('商品 $i', '这是一个商品详情,编号为$i'))
//     )
//   ));
// }
// class ProductList extends StatelessWidget {
//   final List<Product> prodcuts;
//   ProductList({Key key,@required this.prodcuts}):super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('商品列表')),
//       body: ListView.builder(
//         itemCount: prodcuts.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(prodcuts[index].description),
//             onTap:(){
//               Navigator.push(context, MaterialPageRoute(
//                 builder:(context) => new ProductDetail(product: prodcuts[index])
//               ));
//             }
//           );
//         },
//       )
//     );
//   }
// }
// class ProductDetail extends StatelessWidget {
//   final Product product;
//   ProductDetail({Key key, @required this.product}): super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     print(BuildContext);
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('${product.title}'),
//       ),
//       body:Center(child: Text('${product.description}'))
//     );
//   }
// }
// 运行 app
void main() => runApp(MyApp());
// 继承静态组件
class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  /**
   * 重写build
   * @context 上下文
   */
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'title'),
      routes: <String, WidgetBuilder> {
        '/detail': (BuildContext context) => new Detail('')
      }
    );
  }
  /**
   * 渐变色代码段
   */
  //   return MaterialApp(
  //     title: 'text widget',
  //     home: Scaffold(
  //       body: Center(
  //         child: Container(
  //           child: new Text('hello jsPang', style: TextStyle(fontSize: 40.0)),
  //           alignment: Alignment.topLeft,
  //           width: 500,
  //           height: 400,
  //           padding: const EdgeInsets.fromLTRB(10, 30, 0, 0),
  //           margin: const EdgeInsets.all(10),
  //           decoration: new BoxDecoration(
  //             gradient: const LinearGradient(
  //               colors: [Colors.lightBlue, Colors.greenAccent, Colors.purple]
  //             ),
  //             border: Border.all(width: 2, color: Colors.red)
  //           ),
  //         )
  //       )
  //     )
  //   );
  // }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{
  TabController controller;
  @override
  void initState() {
    controller = new TabController(vsync: this, length: 5);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new FirstPage(),
          new SecondPage(),
          new ThirdPage(),
          new ForthPage(),
          new fifthPage()
        ]
      ),
      bottomNavigationBar: new Material(
        color: Colors.orangeAccent,
        child: new TabBar (
          controller: controller,
          tabs: <Tab>[
            new Tab(text: "列表", icon: new Icon(Icons.home)),
            new Tab(text: "通知", icon: new Icon(Icons.message)),
            new Tab(text: "我的", icon: new Icon(Icons.cloud)),
            new Tab(text: "嘿嘿1", icon: new Icon(Icons.cloud)),
            new Tab(text: "小姐姐", icon: new Icon(Icons.cloud)),
          ]
        )
      ),
    );
  }
}