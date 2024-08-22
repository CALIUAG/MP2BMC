import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Hellow BMC Flutter",
        home: Scaffold(
            appBar: AppBar(
              title: Text("Hello BMC Flutter"),
              backgroundColor: Colors.deepPurple,
            ),
            body: Builder (builder:(context)=> Center(
                child: Column(children: [
                  Text(
                    'Hello Flutter',
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[800]),

                  ),
                  Text(
                    'Discover the Flutter',
                    style: TextStyle(
                        fontSize: 20, color: Colors.deepPurpleAccent),

                  ),
                  Image.network('https://th.bing.com/th/id/OIP.VDZmPphN9w6LTsZqZGzSMwHaEK?rs=1&pid=ImgDetMain',
                    height: 350,
                  ),
                  ElevatedButton(
                    child: Text('Contact Us'),
                    onPressed: () => contactUs (context),
                  )

                ]
                )))));
  }
}


void contactUs(BuildContext context){
  showDialog(context: context,
      builder: (BuildContext){
        return AlertDialog(
          title: Text('Contact Us'),
          content: Text('mail us at grc@gmail.com'),
          actions: <Widget> [
            TextButton(
                child: Text('close'),
                onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
    },

  );
}