import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BallPage(),
  ));
}

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          '8 Ball Challenge App',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}
void ChangeTheBall(){
  setState(() {
    count = Random().nextInt(5) + 1;
    print(count);
  });

},
}

class _BallState extends State<Ball> {
  @override
  int count = 1;
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          ChangeTheBall(),
        child: Image.asset('lib/images/ball$count.png'),
      ),
    );
  }
}
