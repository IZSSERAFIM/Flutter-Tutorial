import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/yuna.jpg'),
              ),
              Text(
                '신유나',
                style: TextStyle(
                  fontFamily: 'GamjaFlower',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'ITZY',
                style: TextStyle(
                  fontFamily: 'GamjaFlower',
                  fontSize: 20.0,
                  color: Colors.teal.shade100,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading:
                      Icon(Icons.house_rounded, size: 50.0, color: Colors.teal),
                  title: Text(
                    'itzy.jype.com',
                    style: TextStyle(
                      fontFamily: 'GamjaFlower',
                      fontSize: 20.0,
                      color: Colors.teal.shade300,
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Card(
                  color: Colors.white,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(Icons.account_circle,
                        size: 50.0, color: Colors.teal),
                    title: Text(
                      'instagram.com/igotyuandme',
                      style: TextStyle(
                        fontFamily: 'GamjaFlower',
                        fontSize: 20.0,
                        color: Colors.teal.shade300,
                        letterSpacing: 2.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
