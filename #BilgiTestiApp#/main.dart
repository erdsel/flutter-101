import 'dart:ffi';

import 'package:flutter/material.dart';

import 'constantlar.dart';

void main() => runApp(BilgiTesti());

class BilgiTesti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: SoruSayfasi(),
          ),
        ),
      ),
    );
  }
}

class SoruSayfasi extends StatefulWidget {
  @override
  _SoruSayfasiState createState() => _SoruSayfasiState();
}

class _SoruSayfasiState extends State<SoruSayfasi> {
  List<Icon> secimler = [];
  int soruIndex = 0;

  List<String> sorular = [
    '2+2=5',
    '789*1=789',
    '221*9-5/8=46',
    'Dünya düzdür',
    '0!=1',
    'for(;;)=while(1)'
  ];

  List<bool> yanitlar = [false, true, false, false, true, true];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Container(
                width: 200,
                height: 100,
                color: Colors.amber,
                child: Text(
                  'Soru: \n ${sorular[soruIndex]}',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
        Wrap(
          alignment: WrapAlignment.end,
          direction: Axis.horizontal,
          verticalDirection: VerticalDirection.down,
          children: secimler,
        ),
        Expanded(
          flex: 1,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.0),
              child: Row(children: [
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: ElevatedButton(
                          child: Icon(
                            Icons.thumb_down,
                            size: 50.0,
                            color: Colors.red,
                          ),
                          onPressed: () {

                            bool dogruYantilar = yanitlar[soruIndex];

                            setState(() {
                              dogruYantilar == false
                                  ? secimler.add(kdogruIconu)
                                  : secimler.add(kYanlisIconu);
                              soruIndex++;
                            });
                          },
                        ))),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6),
                    child: ElevatedButton(
                      child: Icon(
                        Icons.thumb_up,
                        size: 50.0,
                        color: Colors.tealAccent,
                      ),
                      onPressed: () {
                        //yukarı butonu
                        bool dogruYanitlar = yanitlar[soruIndex];

                        setState(() {
                          dogruYanitlar == true
                              ? secimler.add(kdogruIconu)
                              : secimler.add(kYanlisIconu);

                          soruIndex = soruIndex + 1;
                        });
                      },
                    ),
                  ),
                ),
              ])),
        )
      ],
    );
  }
}