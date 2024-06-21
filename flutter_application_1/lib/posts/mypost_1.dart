import 'package:flutter/material.dart';
import 'package:flutter_application_1/util/post_template.dart';

class MyPost1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: 'TemplateName',
      videoDescription: 'DoomScrolling',
      numberOfComments: '212',
      numberOfLikes: '1.2M',
      numberOfShares: '123',
      userPost: Container(
        color: Colors.red,
      ),
    );
    }
}