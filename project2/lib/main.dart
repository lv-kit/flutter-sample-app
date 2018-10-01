import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var _stackData = <Widget>[
    Container(
      color: Colors.blueGrey,
      height: 200.0,
      width: 200.0,
      child: Text(
        "One",
        style: TextStyle(
            fontFamily: "Roboto"
        ),
      ),
    ),
    Container(
      color: Colors.pink,
      height: 200.0,
      width: 200.0,
      child: Text(
        "Two",
        style: TextStyle(
            fontFamily: "Roboto"
        ),
      ),
    ),
    Container(
      color: Colors.orange,
      height: 200.0,
      width: 200.0,
      child: Text(
        "three",
        style: TextStyle(
            fontFamily: "Roboto"
        ),
      ),
    ),

  ];

  void fabPressed() {
    setState(() {
      _stackData.insert(0, _stackData.removeLast());
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: Stack(
        children: _stackData,
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: fabPressed,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ),
    );
  }
}
