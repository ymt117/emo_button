import 'package:flutter/material.dart';

void main() => runApp(MyApp());

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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            Image.asset(
              "images/title_logo.png",
              width: size.width,
            ),
            Material(
              color: Colors.brown[300],
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                onTap: _incrementCounter,
                splashColor: Colors.brown[600],
                borderRadius: BorderRadius.circular(10),
                child: Text(
                  " Start ",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "RockSalt",
                    fontSize: 35.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
