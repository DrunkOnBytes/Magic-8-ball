import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            centerTitle: true,
            backgroundColor: Colors.blue.shade900,
            toolbarOpacity: 0.5,
          ),
          body: BallPage(),
        ),
      ),
    );

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {

  var faceNo = 1;
  void changeFace(){
    setState(() {     //rebuild UI again since state has changed
      faceNo = Random().nextInt(5) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
          child: Image.asset('images/ball$faceNo.png'),
          onPressed: changeFace,
      ),
    );
  }
}
