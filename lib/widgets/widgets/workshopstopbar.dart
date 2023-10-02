import 'package:flutter/material.dart';

class WorkshopsTopBar extends StatefulWidget {
  WorkshopsTopBar({Key? key}) : super(key: key);

  _WorkshopsTopBarState createState() => _WorkshopsTopBarState();
}

class _WorkshopsTopBarState extends State<WorkshopsTopBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          SizedBox(
            height: 10.0,
          ),
          ImageContainer(),
      
        ],
      ),
    );
  }

  Widget ImageContainer() {
    return Container(
      height: 200.0,
      child: Center(child: Text('TopCharts')),
    );
  }
}