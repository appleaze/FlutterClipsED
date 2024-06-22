import 'package:flutter/material.dart';
import 'package:flutter_application_1/const.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                // margin: const EdgeInsets.only(bottom: 30.0),
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://static.vecteezy.com/system/resources/previews/002/534/006/original/social-media-chatting-online-blank-profile-picture-head-and-body-icon-people-standing-icon-grey-background-free-vector.jpg'), // URL to your image
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Username',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Premium Member',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF9EFFD2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Watch Time\n -- -- --',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF9EFFD2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Quiz Solved\n -- -- --',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Row(children: [
                  Icon(Icons.history),
                  SizedBox(width: 8),
                  Text('History',
                      textAlign: TextAlign.left, style: TextStyle(fontSize: 20))
                ]),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  children: [
                    Container(
                      width: 90,
                      height: 160,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 193, 193, 193),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 90,
                      height: 160,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 193, 193, 193),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 90,
                      height: 160,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 193, 193, 193),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    SizedBox(width: 10),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Text('Settings',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 20))
                  ],
                ),
              ),
              // ==================================================================
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.greenAccent.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.bar_chart, color: buttonColor),
                      onPressed: () {},
                    ),
                    Expanded(
                      child: Text(
                        'Time Spent',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios, color: buttonColor),
                  ],
                ),
              ),
              // ==================================================================
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.greenAccent.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.settings, color: buttonColor),
                      onPressed: () {},
                    ),
                    Expanded(
                      child: Text(
                        'Setings',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios, color: buttonColor),
                  ],
                ),
              ),
              // ==================================================================
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.greenAccent.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.download, color: buttonColor),
                      onPressed: () {},
                    ),
                    Expanded(
                      child: Text(
                        'Download',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios, color: buttonColor),
                  ],
                ),
              ),
              // ==================================================================
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.greenAccent.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.play_arrow, color: buttonColor),
                      onPressed: () {},
                    ),
                    Expanded(
                      child: Text(
                        'Get Premium',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios, color: buttonColor),
                  ],
                ),
              ),
              // ==================================================================
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.greenAccent.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.help_center, color: buttonColor),
                      onPressed: () {},
                    ),
                    Expanded(
                      child: Text(
                        'Help & Center',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios, color: buttonColor),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Text('Account',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 20))
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 255, 117, 117).withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.delete, color: Colors.redAccent),
                      onPressed: () {},
                    ),
                    Expanded(
                      child: Text(
                        'Delete Account',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios, color: Colors.redAccent),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 255, 117, 117).withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.logout, color: Colors.redAccent),
                      onPressed: () {},
                    ),
                    Expanded(
                      child: Text(
                        'Log Out',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios, color: Colors.redAccent),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
