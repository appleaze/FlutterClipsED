import 'package:flutter/material.dart';

class UserDiscoverPage extends StatelessWidget {
  const UserDiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 18, 18, 18),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(40.0),
            child: Text(
              'Discovery New Topics',
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Expanded(
            child: DefaultTabController(
              length: 0, 
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        
                        child: buildOptionContent(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildOptionContent() {
  return ListView.builder(
    itemCount: 5, // Jumlah item yang diinginkan
    itemBuilder: (context, index) {
      Color color;
      // Atur warna berdasarkan indeks
      switch (index % 5) {
        case 0:
          color = const Color.fromARGB(255, 139, 203, 255);
          break;
        case 1:
          color = const Color.fromARGB(255, 158, 255, 161);
          break;
        case 2:
          color = const Color.fromARGB(255, 255, 219, 165);
          break;
        case 3:
          color = const Color.fromARGB(255, 247, 201, 255);
          break;
        case 4:
          color = const Color.fromARGB(255, 255, 250, 200);
          break;
        default:
          color = Colors.grey;
      }

      return Container(
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30.0), // Atur border radius
        ),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              child: Icon(Icons.image), // Ganti dengan gambar Anda
            ),
            SizedBox(width: 20.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Topic Content Title $index',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Deskripsi $index',
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}

}

void main() {
  runApp(MaterialApp(
    home: UserDiscoverPage(),
  ));
}
