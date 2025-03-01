import 'package:flutter/material.dart';
import 'package:listbuilder/user.dart';

import 'package:flutter/material.dart';
import 'user.dart'; // Import user model
// Import the user detail screen

class UserListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Learning ListView.builder')),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(users[index].name),
            leading: CircleAvatar(
              backgroundImage: AssetImage(users[index].image),
            ),
            subtitle: Text(users[index].profession),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => UserDetailScreen(user: users[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
class User {
  String name;
  String profession;
  String image;

  User(this.name, this.profession, this.image);
}

List<User> users = [ // Added type annotation for clarity
  User('Paul Martins', 'App Developer', 'assets/person 7.jpeg'),
  User('Paul Walker', 'Architect', 'assets/person 6.jpeg'),
  User('Chloe Martins', 'Game Developer', 'assets/jpe.jpeg'),
  User('Jimmy Williams', 'Web Developer', 'assets/gpc.jpeg'),
  User('Paul Asher', 'Game Developer', 'assets/gp.jpeg'),
  User('Paula McJepherson', 'Cybersecurity', 'assets/cpc.jpeg'),
  User('Cynthia Annes', 'Cloud Architect', 'assets/WhatsApp Image 2025-02-11 at 2.22.51 PM.jpeg'),
];


