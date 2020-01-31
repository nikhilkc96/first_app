import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void answerQestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });

    print(questionIndex);
  }

  int OnPress() {
    int age = 12;
    print("This the onPress Demo" + age.toString());
  }

  var questions = ["What's your Age ", "What's your Name 👽", "Domingo", "Stracke"];
  var age = [22, 23, 24];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Myapp'),
      ),
      body: Column(
        children: <Widget>[
          Container(
          width: double.infinity,
          margin: EdgeInsets.all(0),
          padding: EdgeInsets.all(22),
          child:
          Text(
            questions.elementAt(questionIndex),
            style: TextStyle(fontSize: 28),
            textAlign: TextAlign.center,
          ),
          ),
          RaisedButton(
            child: Text("Asn"),
            onPressed: answerQestion,
          ),
          RaisedButton(child: Text("22"), onPressed: OnPress),
          RaisedButton(
            child: Text("23"),
            onPressed: () => print("Botton Two is pressed"),
          ),
          FlatButton(
            child: Text("24"),
            onPressed: () {
              print("Botton 3 is pressed");
            },
          ),
          RaisedButton(
            child: Text("Toast Demo"),
            onPressed: () {
              Fluttertoast.showToast(
                msg: "Toast"+questions[1].toString(),
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIos: 2,
                backgroundColor:null,
              );
            },
          )
        ],
      ),
    ));
  }
}
