import 'package:flutter/material.dart';
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
    void _navigateBottomBar(int index){
      setState(() {
        _selectedIndex =index;
      });
    }

    final List <Widget> _pages =[
      UserHomePage(),
      UserClipsPages(),
      UserDiscoverPage(),
      UserFollowingPages(),
      UserProfilePage(),
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        type: BottomNavigationBarType.fixed,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.play_arrow), label: 'Clips'),
        BottomNavigationBarItem(icon: Icon(Icons.compass_calibration_sharp), label: 'Discover'),
        BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Following'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],),
    );
  }
}