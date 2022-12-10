import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late String seciliButon = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Row(children: <Widget>[
            TextButton(
              onPressed: () {
                setState(() {
                  seciliButon = 'SOL';
                });

                print(seciliButon);
              },
              child: Container(
                width: 100,
                height: 200,
                color: seciliButon == 'SOL' ? Colors.lime : Colors.deepOrangeAccent,
                child: Text("SOL"),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  seciliButon = 'SAG';
                });
                child:

                print(seciliButon);
              },
              child: Container(
                width: 100,
                height: 200,
                color: seciliButon == 'SAG' ? Colors.yellow : Colors.pink,
                child: Text("SAG"),
              ),
            ),
          ]),
        ));
  }
}
