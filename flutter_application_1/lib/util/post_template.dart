import 'package:flutter/material.dart';
import 'package:flutter_application_1/util/button.dart';

class PostTemplate extends StatelessWidget {
  final String username;
  final String videoDescription;
  final String numberOfLikes;
  final String numberOfComments;
  final String numberOfShares;
  final userPost;

  PostTemplate({
    required this.username,
    required this.videoDescription,
    required this.numberOfLikes,
    required this.numberOfComments,
    required this.numberOfShares,
    required this.userPost,
  });
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //user post
          userPost,
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: Alignment(-1, 1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("@" + username,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(text: videoDescription),
                        TextSpan(text: '#Project #SE',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                        ),
                      )
                ],
              ),
            ),
          ),
        
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: Alignment(1,1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyButton(
                    icon: Icons.favorite,
                    number: numberOfLikes,
                  ),
                  MyButton(
                    icon: Icons.chat_bubble_outline_outlined,
                    number: numberOfComments,
                  ),
                  MyButton(
                    icon: Icons.send,
                    number: numberOfShares,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}