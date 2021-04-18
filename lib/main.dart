import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => MyHomePage(),
      //   '/next': (context) => NextPage(),
      // },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final items = List<String>.generate(10000, (i) => "item $i");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SH Lab のFlutter大学"),
        actions: [
          Icon(Icons.add),
          Icon(Icons.share),
        ],
      ),
      body: Container(
        width: double.infinity,
        child: GridView.count(
          crossAxisCount: 3,
          children: List.generate(100, (index) {
            return Column(
              children: [
                Expanded(child: Image.network("https://pbs.twimg.com/profile_images/1124912016177516546/ItKxM_F8_400x400.jpg"),),
                Text('$index'),
              ],
            );
          }),
        ),
      ),
    );
  }
}
