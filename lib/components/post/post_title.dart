import 'package:flutter/material.dart';

class PostTitle extends StatelessWidget{
  
  final String text;
  const PostTitle({super.key, required this.text});
  @override
  Widget build(BuildContext context){
    Color textColor=const Color(0xFF1D1B20);
    return Text(
      text,
      style: TextStyle(
        color: textColor,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      )
    );
  }
}