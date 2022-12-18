import 'package:flutter/material.dart';

void main() {
  runApp(
    udemyUygulamam(),
  );
}

class udemyUygulamam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(

          body: SafeArea(

              child: Column(
                mainAxisSize: MainAxisSize.max,
                //crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,// .start, .spaceBetween
                  children: [
                Container(
                    margin: const EdgeInsets.only(top: 10.0, left: 60.0, right: 60.0),
                    color: Colors.pink, width:200, height: 100,child: Align(alignment: Alignment.bottomLeft,child: Text("Parça 1"),)

                ),
                Spacer(),
                Container(
                    margin: const EdgeInsets.only( left: 60.0, right: 60.0),
                    color: Colors.blue, width: 200, height: 100,child:Center(child: Text("Parça 2"),)
                ),
                Spacer(),
                Container(
                    margin: const EdgeInsets.only( left: 60.0, right: 60.0),
                    color: Colors.lightGreenAccent, width: 200, height: 100,child: Align(alignment: Alignment.topCenter,child: Text("Parça 3"),)
                ),
                    Spacer(),
                    Container(
                        margin: const EdgeInsets.only( left: 60.0, right: 60.0),
                        color: Colors.tealAccent, width: 200, height: 100,child: Align(alignment: Alignment.topRight,child: Text("Parça 4"),)
                    ),


              ],)
          ),
        )
    );
  }
}