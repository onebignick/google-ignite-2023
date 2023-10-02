import 'package:flutter/material.dart';

class CareServicesBar extends StatefulWidget {
  CareServicesBar({Key? key}) : super(key: key);

  _CareServicesBarState createState() => _CareServicesBarState();
}

class _CareServicesBarState extends State<CareServicesBar> {
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