import 'package:flutter/material.dart';

class UserFollowingPages extends StatelessWidget {
  const UserFollowingPages({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 18, 18, 18),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: const Color.fromARGB(255, 39, 206, 67), width: 1.0),
              ),
            ),
            child: Text(
              'Following',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 39, 206, 67),
                
              ),
              
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                  ),
                  textColor: Colors.white,
                  title: Text('User $index'),
                  subtitle: Text('Description of user $index'),
                  trailing: ElevatedButton(
                    onPressed: () {
                    },
                    child: Text('Follow'),
                    
                  ),
                  
                  onTap: () {
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: UserFollowingPages(),
  ));
}
