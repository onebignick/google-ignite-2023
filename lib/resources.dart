import 'package:flutter/material.dart';

class Resources extends StatelessWidget {
  static const routeName = '/';

  const Resources({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const _ResourceBar(),
      body: Container(),
    );
  }
}



class _ResourceBar extends StatelessWidget implements PreferredSizeWidget{
  const _ResourceBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildButton(context, 'Guides'),
          _buildButton(context, 'Workshops'),
        ],
      )
    );
  }

  TextButton _buildButton(BuildContext context, String text) {
    return TextButton(
          onPressed: () {}, 
          style: TextButton.styleFrom(fixedSize: const Size(100, 50)), // customisable
          child: Text(
            text,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.white, // color of top bar words
              ),
          )
        );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(56.0);
}