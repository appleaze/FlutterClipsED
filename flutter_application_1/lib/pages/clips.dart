import 'package:flutter/material.dart';
import 'package:flutter_application_1/posts/mypost_1.dart';
import 'package:flutter_application_1/posts/mypost_2.dart';
import 'package:flutter_application_1/posts/mypost_3.dart';

class UserClipsPages extends StatelessWidget {
  final _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: [
          MyPost1(),
          MyPost2(),
          MyPost3(),
        ],
      ),
    );
  }
}