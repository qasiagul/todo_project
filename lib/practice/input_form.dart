import 'package:flutter/material.dart';

/// Flutter code sample for [ExpansionTile].

void main() => runApp(const ExpansionTileApp());

class ExpansionTileApp extends StatelessWidget {
  const ExpansionTileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(title: const Text('ExpansionTile Sample')),
        body: const ExpansionTileExample(),
      ),
    );
  }
}

class ExpansionTileExample extends StatefulWidget {
  const ExpansionTileExample({super.key});

  @override
  State<ExpansionTileExample> createState() => _ExpansionTileExampleState();
}

class _ExpansionTileExampleState extends State<ExpansionTileExample> {
  bool _customTileExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const ExpansionTile(
          title: Text('ExpansionTile 1'),
          subtitle: Text('Trailing expansion arrow icon'),
          children: <Widget>[
            ListTile(title: Text('This is tile number 1')),
          ],
        ),
        ExpansionTile(
          title: const Text('ExpansionTile 2'),
          subtitle: const Text('Custom expansion arrow icon'),
          trailing: Icon(
            _customTileExpanded
                ? Icons.arrow_drop_down_circle
                : Icons.arrow_drop_down,
          ),
          children: const <Widget>[
            ListTile(title: Text('This is tile number 2')),
          ],
          onExpansionChanged: (bool expanded) {
            setState(() {
              _customTileExpanded = expanded;
            });
          },
        ),
        const ExpansionTile(
          title: Text('ExpansionTile 3'),
          subtitle: Text('Leading expansion arrow icon'),
          controlAffinity: ListTileControlAffinity.leading,
          children: <Widget>[
            ListTile(title: Text('This is tile number 3')),
          ],
        ),
      ],
    );
  }
}



// import 'package:flutter/material.dart';
//
// class InputForm extends StatelessWidget {
//    InputForm ({Key? key}) : super(key: key);
//
//   var _formkey = GlobalKey<FormState>();
//
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       appBar: AppBar(title: Text('Signup Form'),),
//       body: Wrap(
//         spacing:19.0, // gap between adjacent chips
//         runSpacing: 1.0, // gap between lines
//         children: <Widget>[
//           Chip(
//             avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text('AH')),
//             label: const Text('Hamilton'),
//           ),
//           Chip(
//             avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text('ML')),
//             label: const Text('Lafayette'),
//           ),
//           Chip(
//             avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text('HM')),
//             label: const Text('Mulligan'),
//           ),
//           Chip(
//               avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text('AR')),
//               label: const Text('Arslan'))
//         ],
//       )
      // Row(
      //   children: <Widget>[
      //     Spacer(flex: 3,),
      //     Container(
      //       width: 50,
      //       height: 50,
      //       color: Colors.lightGreenAccent,
      //     ),
      //     Spacer(),// Defaults to a flex of one.
      //     Container(
      //       width: 50,
      //       height: 50,
      //       color: Colors.lightGreenAccent,
      //     ),
      //     // Gives twice the space between Middle and End than Begin and Middle.
      //     Spacer(),
      //     Container(
      //       width: 50,
      //       height: 50,
      //       color: Colors.lightGreenAccent,
      //     ),
      //   ],
      // ),

      // GridView.count(
      //   primary:true,
      //   crossAxisSpacing: 2,
      //   mainAxisSpacing: 2,
      //   crossAxisCount: 2,
      //   children: <Widget>[
      //     Container(
      //       padding: const EdgeInsets.all(8),
      //       color: Colors.teal[100],
      //       child: const Text("He'd have you all unravel at the"),
      //     ),
      //     Container(
      //       padding: const EdgeInsets.all(8),
      //       color: Colors.teal[200],
      //       child: const Text('Heed not the rabble'),
      //     ),
      //     Container(
      //       padding: const EdgeInsets.all(8),
      //       color: Colors.teal[300],
      //       child: const Text('Sound of screams but the'),
      //     ),
      //     Container(
      //       padding: const EdgeInsets.all(8),
      //       color: Colors.teal[400],
      //       child: const Text('Who scream'),
      //     ),
      //     Container(
      //       padding: const EdgeInsets.all(8),
      //       color: Colors.teal[500],
      //       child: const Text('Revolution is coming...'),
      //     ),
      //     Container(
      //       padding: const EdgeInsets.all(8),
      //       color: Colors.teal[600],
      //       child: const Text('Revolution, they...'),
      //     ),
      //   ],
      // ),
    /*  Form(key: _formkey,
        child:  Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: textDisplay("Signup", 30)),
              const SizedBox(height: 30,),
              TextFormField(
                validator:(value){
                  if (value == null || value.isEmpty){
                    return"Input should not be Empty";
                  }
                },
                decoration: InputDecoration(hintText: 'Enter Your Email'),
              ),
              const SizedBox(height: 30,),
               TextFormField(
                validator: (value){
                  if (value == null || value.length<6){
                    return"Input should not be less than 6 characters";
                  }
                },
                obscureText: true,
                decoration: InputDecoration(hintText: 'Enter Your Password'),
              ),
              const SizedBox(height: 30,),
               TextFormField(
                validator: (value){
                  if (value == null || value.length<6){
                    return"Input should not be less than 6 characters";
                  }
                },
                obscureText: true,
                decoration: InputDecoration(hintText: 'Confirm Password'),
              ),
              const SizedBox(height: 30,),
              Center(
                child:ElevatedButton(
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                       ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                       _formkey.currentState!.reset();
                    }
                  },
                  child: const Text('Submit',style: TextStyle(fontSize: 20),),
                ),
              ),
            ],
          ),
        ),),*/
//     );
//   }
// }
/*Widget textDisplay(String content, double fontsize){
  return Text(content,
  style: TextStyle(
    fontSize: fontsize,
    fontWeight: FontWeight.bold,
  ),
  );
}

*/