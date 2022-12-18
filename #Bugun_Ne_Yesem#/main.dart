
import 'dart:math'; //for rand function

import 'package:flutter/material.dart';

void main() {
  runApp(benimUygulamam());
}
/*
FlatButton kullanimi
(color,higlightColor,splashColor)
expanded
padding
flutter outline
 */
class benimUygulamam extends StatelessWidget {
  const benimUygulamam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white60,
        appBar: AppBar(
          backgroundColor: Colors.purple,
          centerTitle: true,
          title: Text(
            'bugün ne yesem?',
            style: TextStyle(color: Colors.white60),
          ),
        ),
        body: YemekSayfasi(), /*uygulamanin asil calisacagi govde*/
        /*yemeksayfasi widgetına gitmesi icin*/
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {//durumu olan statefulWidget
  @override
  /*statelesswidget!*/
  State<YemekSayfasi> createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int corbaNo = 1;
  int yemekNo = 1;
  int tatliNo = 1;

  List corbaAdlari = [
    'mercimek',
    'tarhana',
    'tavuksuyu',
    'düğün çorbası',
    'yoğurtlu çorba'
  ];

  List yemekAdlari = [
    'karniyarik',
    'manti',
    'kuru fasulye',
    'içli köfte',
    'izgara balik',
  ];

  List tatliAdlari = [
    'kadayif',
    'baklava',
    'sütlaç',
    'kazandibi',
    'dondurma',
  ];

  void yemekleriYenile() {
    setState(() {
      corbaNo = Random().nextInt(5) + 1;//5 degerini de alabilmesi icin
      yemekNo = Random().nextInt(5) + 1;
      tatliNo = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                onPressed: yemekleriYenile,
                child: Image.asset('assets/corba_$corbaNo.jpg'),
              ),
            ),
          ),
          Text(
            corbaAdlari[corbaNo - 1],
           style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                onPressed: yemekleriYenile,
                child: Image.asset('assets/yemek_$yemekNo.jpg'),
              ),
            ),
          ),
          Text(
            yemekAdlari[yemekNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                  onPressed: yemekleriYenile,
                  child: Image.asset('assets/tatli_$tatliNo.jpg')),
            ),
          ),
          Text(
            tatliAdlari[tatliNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}


