import 'package:flutter/material.dart';
import 'package:todo_project/model/user_data_model.dart';
class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}
class _FirstScreenState extends State<FirstScreen> {

  List<String> names = ["Fluttter", "App", "Development", "Mobile", "Hello"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index){
            return const ListTile(
              trailing:  Icon(Icons.heart_broken_outlined) ,
              leading:  CircleAvatar(),
              title:  Text("i want you"),
              subtitle:  Text('userData[index]["phoneNumber"]!'),
            );
          }
      ) ,
    );
  }
}


class Todo extends StatelessWidget {
     Todo ({super.key});
     // Map<String,String> userData ={
     //   "Name":"Flutter",
     //   "phoneNumber":"75329820127",
     //   "title":"Engineer"
     // };
     // List<Map<String,String>> userData =[
     //   {"Name":"Flutter","phoneNumber":"75329820127", "title":"Engineer"},
     //   {"Name":"Flutter","phoneNumber":"75329820127", "title":"Engineer"},
     //   {"Name":"Flutter","phoneNumber":"75329820127", "title":"Engineer"},
     //   {"Name":"Flutter","phoneNumber":"75329820127", "title":"Engineer"},
     // ];
     // List <User>  userData =[
     //   User(Name: "Qasia", phoneNumber: "03432163172", title: "App Developper"),
     //   User(Name: "Qasia", phoneNumber: "03432163172", title: "App Developper"),
     //   User(Name: "Qasia", phoneNumber: "03432163172", title: "App Developper"),
     // ];

     List <Data> favouriteList = [
       Data(Name: "Arsalan", phoneNumber: "03498654896", title: "Designer"),
       Data(Name: "Arsalan", phoneNumber: "03498654896", title: "Designer"),
       Data(Name: "Arsalan", phoneNumber: "03498654896", title: "Designer"),
     ];
     @override
     Widget build(BuildContext context) {
       return Scaffold(
         appBar: AppBar(
           title: Text('Todo Screen'),
         ),
         body: ListView.builder(
           itemCount: favouriteList.length,
           itemBuilder: (context , index){
             Data currentUser = favouriteList [index];
            return ListTile(
               leading: CircleAvatar(),
               title: Text(currentUser.Name),
               subtitle: Text(currentUser.phoneNumber),
               trailing:IconButton(
                 icon: Icon(Icons.favorite),
                 onPressed:() {
                   favouriteList.add(currentUser);
                   print('favouriteList');
                 },
               ),
             );


             }));
     }
   }
   