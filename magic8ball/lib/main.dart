import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            backgroundColor: Colors.blue,
            appBar: AppBar(
              title: Text(
                'Ask Me Anything',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              backgroundColor: Colors.blue.shade900,
            ),
            body: Magic8BallPage(),
          )),
    );

class Magic8BallPage extends StatefulWidget {
  const Magic8BallPage({super.key});

  @override
  State<Magic8BallPage> createState() => _Magic8BallPageState();
}

class _Magic8BallPageState extends State<Magic8BallPage> {
  int ballNumber = 1;
  void update() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          update();
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
