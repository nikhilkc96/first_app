import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
//   //debugShowCheckedModeBanner: false;
// }

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text('Myapp'),),
      body: Row(children: <Widget>[
        Text("What's Your Age"),
        RaisedButton(child: Text("22"),onPressed: null,),
        RaisedButton(child: Text("23"),onPressed: null,),
        RaisedButton(child: Text("24"),onPressed: null,)
       ],
       ),    
    )
  );
  }
}
 