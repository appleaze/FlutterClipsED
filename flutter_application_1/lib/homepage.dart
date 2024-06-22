import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/const.dart';
import 'package:flutter_application_1/pages/clips.dart';
import 'package:flutter_application_1/pages/discover.dart';
import 'package:flutter_application_1/pages/following.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/pages/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomePage> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    if (_selectedIndex == 1 && index == 1) {
      setState(() {
        _selectedIndex = 0;
      });
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  final List<Widget> _pages = [
    UserHomePage(),
    UserClipsPages(),
    UserDiscoverPage(),
    UserFollowingPages(),
    UserProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (_selectedIndex == 0 || _selectedIndex == 2 || _selectedIndex == 3)
          ? AppBar(
              backgroundColor: Color.fromARGB(255, 18, 18, 18),
              title: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      if (_selectedIndex == 1) {
                        _navigateBottomBar(0);
                      }
                    },
                    child: Row(
                      children: [
                        Icon(Icons.play_arrow, size: 30, color: buttonColor),
                        SizedBox(width: 8),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                  text: 'Clips',
                                  style: TextStyle(color: Colors.white)),
                              TextSpan(
                                text: 'Ed',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: buttonColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.search),
                  color: Colors.white,
                  onPressed: () {},
                ),
              ],
            )
          : null,
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: buttonColor,
        unselectedItemColor: textColor,
        backgroundColor: Color.fromARGB(255, 18, 18, 18),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.play_arrow), label: 'Clips'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.compass_fill), label: 'Discover'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Following'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
