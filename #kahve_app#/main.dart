import 'package:flutter/material.dart';


void main() {
  runApp(benimUygulamam());
}



class benimUygulamam extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme: ThemeData(fontFamily: 'Comfortaa'),
      home: Scaffold(
        backgroundColor: Colors.brown,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 70.0,
                  backgroundColor: Colors.amber,
                  backgroundImage: AssetImage('assets/images/kahve.jpg'),

                ),
                Text
                  ('Flutter Kahvecisi',
                style: TextStyle(
                  fontFamily: 'Comfortaa',
                  fontSize: 30,
                  color: Colors.white,

                ),

                ),

                Text
                  ('Bir Fincan Uzağınızda',
                  style: TextStyle(
                    fontFamily: 'Comfortaa',
                    fontSize: 20,
                    color: Colors.white38,

                  ),

                ),
                Container(
                  width: 200,
                  child: Divider(
                    height: 30,
                    color: Colors.white,
                  ),
                ),
                Card(
                  color: Colors.brown[900],
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  //padding: EdgeInsets.all(10.0),

                  child: ListTile(
                    leading: Icon(Icons.email,
                      color: Colors.white,
                    ),
                    title: Text(
                      'siparis@kahvecisi.com',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                      ),

                    ),

                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Card(
                  color: Colors.brown[900],
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  //padding: EdgeInsets.all(10.0),
                  child: ListTile(
                    leading: Icon(Icons.phone, color: Colors.white,),
                    title: Text(
                      '05557885265',
                      style:
                      TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ) ,
                  ),
                )
              ],
            ),
          ),
        ),
      ),

    );
  }
}




