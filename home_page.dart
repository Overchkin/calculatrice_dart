import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State createState()=> new HomePageState();
}

class HomePageState extends State<HomePage> {
  var num1=0, num2=0, sum=0 ;
  
  final TextEditingController t1 = new TextEditingController(Text: "0");
  final TextEditingController t1 = new TextEditingController(Text: "0");

  void doAdd() {
    setState((){
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void doSub() {
    setState((){
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void doMul() {
    setState((){
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void doDiv() {
    setState((){
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

  void doClear(){
    setState((){
      t1.text = "0";
      t2.text = "0";
    });
  }

  @override
  widget build(BuildContext context) {
   return new Scaffold(
     appBar: new appBar{
       title: new Text("Calculator"),
    }, //AppBar
    body: new container(
      padding: const EdgeInsets.all(40.0),
      child: new Column(
        mainAxisAlignement: mainAxisAlignement.center,
        children: <widget>[
          new Text(
            "Output :$sum",
            style: new TextStyle(fontSize: 20.0,
            fontWeight: FontWeight.bold,
             color: Colors.purple), // TextStyle
          ), // Text
          new TextField(
            keyboardType: TextInputType.number,
            decoration: new InputDecoration(
              (hintText: "Enter Number 1"),
              controller: t1,
          ), //TextField
            new TextField(
            keyboardType: TextInputType.number,
            decoration: new InputDecoration(
              (hintText: "Enter Number 1"),
              controller: t2,
            ), 
            new padding(
              padding: const EdgeInsets.only(top: 20.0),
            ) //padding
            new row(
              mainAxisAlignement: MainAxisAlignement.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("+"),
                  Color: Colors.greenAccent,
                  onPressed: doAdd,
                ) // MaterialButton
                new  MaterialButton(
                  child: new Text("-"),
                  Color: Colors.greenAccent,
                  onPressed: doSub,
                ) //  MaterialButton
              ], // <Widget>[]
            ), // Row
               new Padding(
                  padding: const EdgeInsets.only(top: 20.0),
            ) //padding
            new row (
              mainAxisAlignement: MainAxisAlignement.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("*"),
                  Color: Colors.greenAccent,
                  onPressed: doMul,
                ) // MaterialButton
                new  MaterialButton(
                  child: new Text("/"),
                  Color: Colors.greenAccent,
                  onPressed: doDiv,
                ) //  MaterialButton
              ] //<Widget>[]
                new Padding(
                  padding: const EdgeInsets.only(top: 20.0),
            ) //padding
            new row (
              mainAxisAlignement: MainAxisAlignement.center,
              children: <Widget>[
               new  MaterialButton(
                  child: new Text("Clear"),
                  Color: Colors.greenAccent,
                  onPressed: doClear,
               ), // MaterialButton  
              ] // <Widget>[]
            ) // Row
        ], //<Widget>[]
      ), //Column
    ), //Container
  ), //Scaffold
  }
}

