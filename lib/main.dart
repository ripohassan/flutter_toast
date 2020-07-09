import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Toast',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Toast Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Toast plugin example app'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: RaisedButton(
                    child: Text('Show Short Toast'),
                    onPressed: () => showToast("Show Short Toast")),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: RaisedButton(
                    child: Text('Show Long Toast'),
                    onPressed: () => showToast("Show Long Toast", duration: Toast.LENGTH_LONG)),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: RaisedButton(
                    child: Text('Show Bottom Toast'),
                    onPressed: () => showToast("Show Bottom Toast", gravity: Toast.BOTTOM)),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: RaisedButton(
                    child: Text('Show Center Toast'),
                    onPressed: () => showToast("Show Center Toast", gravity: Toast.CENTER)),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: RaisedButton(
                    child: Text('Show Top Toast'),
                    onPressed: () => showToast(
                        "This top toast",
                        gravity: Toast.TOP)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showToast(String msg, {int duration, int gravity}) {
    Toast.show(msg, context, duration: duration, gravity: gravity);
  }
}