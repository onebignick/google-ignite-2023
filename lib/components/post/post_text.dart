import 'package:flutter/material.dart';

class PostText extends StatelessWidget{
  
  final String text;
  const PostText({super.key, required this.text});
  @override
  Widget build(BuildContext context){
    Color headerColor=const Color(0xFF49454F);
    return Text(
      text,
      style: TextStyle(
        color: headerColor,
        fontSize: 12,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.5,
      ),
      softWrap: true,
      overflow: TextOverflow.visible,
    );
  }
}