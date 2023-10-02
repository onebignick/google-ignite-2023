import 'package:flutter/material.dart';

class CustomTag extends StatelessWidget {
  const CustomTag({
    Key? key,
    required this.backgroundColor,
    required this.borderColor, // Add this property for border color
    required this.children,
    this.textTags = const [],
  }) : super(key: key);

  final Color backgroundColor;
  final Color borderColor; // Define the border color
  final List<Widget> children;
  final List<String> textTags;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(color: borderColor, width: 1.0), // Define the border
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          for (var tag in textTags) 
            Text(tag, style: TextStyle(fontSize: 12.0)),
            ...children,
        ],
      ),
    );
  }
}
