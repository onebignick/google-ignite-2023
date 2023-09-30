import 'package:flutter/material.dart';

class PostTags extends StatelessWidget{
  
  final String text;
  const PostTags({super.key, required this.text});
  @override
  Widget build(BuildContext context){
    Color textColor = const Color(0xFF49454F);
    Color backgroundColor = const Color(0xFFF3EDF7);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        color: backgroundColor,
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 11,
            fontWeight: FontWeight.w200,
          ),
        )
      ) 
    ); 
  }
}