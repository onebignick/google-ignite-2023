import 'package:flutter/material.dart';

class CustomTag2 extends StatelessWidget {
  const CustomTag2({
    Key? key,
    required this.child,
  }) : super(key: key);

  final String child;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 0.5),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text(child, style: const TextStyle(color: Colors.black)));
  }
}
