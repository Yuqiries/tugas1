import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ProfilePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profil"),
        backgroundColor: Colors.blue[900],
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          CircleAvatar(
            radius: 70,
            backgroundImage: AssetImage("assets/profile-image.jpg"),
          ),
          SizedBox(height: 10),
          Text(
            "Kenza Nandita Rahma",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue[900]),
            textAlign: TextAlign.center,
          ),
          Text(
            "kenza@student.undiksha.ac.id",
            style: TextStyle(fontSize: 16, color: Colors.blue),
          ),
          SizedBox(height: 20),
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.all(20),
              crossAxisCount: 2,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
              children: [
                _buildMenuButton(Icons.location_on, "Singaraja", Colors.green),
                _buildMenuButton(Icons.store, "Kuta", Colors.yellow[700]!),
                _buildMenuButton(Icons.music_note, "All Genre", Colors.purple),
                _buildMenuButton(Icons.school, "Undiksha", Colors.blue),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuButton(IconData icon, String text, Color color) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40, color: color),
          SizedBox(height: 10),
          Text(
            text,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
        ],
      ),
   );
  }
}
