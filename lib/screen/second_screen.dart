import 'package:flutter/material.dart';
import 'package:todo_project/screen/todo_screen.dart';
import 'package:todo_project/model/user_data_model.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({super.key, required List<User> userData});
  List<User> userData = [
    User (Name: "Luqman", phoneNumber: "12345678", title: "Develope"),
    User (Name: "Asif", phoneNumber: "0987654", title: "Enginerr"),
    User (Name: "Zeeshan", phoneNumber: "23467898765", title: "Develope"),
    User (Name: "Usman", phoneNumber: "e453455", title: "Manager"),
    User (Name: "Ali", phoneNumber: "4457898", title: "Senior"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: ListView.builder(
        itemCount: userData.length,
        itemBuilder: (context, index) {
          User currentUser = userData[index];
          return ListTile(
            leading: CircleAvatar(),
            subtitle: Text(currentUser.title),
            trailing:Icon(Icons.ac_unit),
            title: Text(currentUser.Name),
          );
        },
      ),
    );
  }
}

