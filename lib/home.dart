import 'dart:convert';

import 'package:cloud9/function.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  const Home({Key? key}):super(key:key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{
  String url="";
  String output="Initial Output";
  var data;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(title:Text("Simple Flask App")),
      body: Center(
        child: Column(
        children: [
          TextField(
            onChanged: (value){
              url='http://127.0.0.1:5000/api?query=' + value.toString();
              // emulator: http://10.0.2.2:5000
              // prod: http://127.0.0.1:5000
            },
          ),
          TextButton(onPressed:() async {
            data = await fetchdata(url);
            var decoded = jsonDecode(data);
            setState((){
              output=decoded['output'];
            });
          }, child: Text("Fetch ASCII Value")),
          Text(output)
        ],))
    );
  }
}