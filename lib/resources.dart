import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Resources extends StatelessWidget {
  static const routeName = '/';

  const Resources({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _ResourceBar(),
      body: Container(),
    );
  }
}

class _ResourceBar extends StatelessWidget {
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
        children: [],
      )
    );
  }
}