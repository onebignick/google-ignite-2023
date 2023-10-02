import 'package:flutter/material.dart';

class ServicesRequestBar extends StatefulWidget {
  ServicesRequestBar({Key? key}) : super(key: key);

  _ServicesRequestBarState createState() => _ServicesRequestBarState();
}

class _ServicesRequestBarState extends State<ServicesRequestBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          SizedBox(
            height: 10.0,
          ),
      
        ],
      ),
    );
  }
}