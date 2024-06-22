import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/const.dart';
import 'package:flutter_application_1/pages/discover.dart';
import 'package:flutter_application_1/pages/home.dart';


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
      UserDiscoverPage(),
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Handle search action
            },
          ),
        ],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: buttonColor,
        unselectedItemColor: textColor,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Hofffme'),
        BottomNavigationBarItem(icon: Icon(Icons.play_arrow), label: 'Clips'),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.compass_fill), label: 'Discover'),
        BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Following'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],),
    );
  }
}