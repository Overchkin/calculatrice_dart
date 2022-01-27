import 'package:flutter/material.dart';
import 'home_page.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  widget build(BuildContext) {
    return new materialApp{
      title: "Calculator App"
      theme: new ThemeData{
        (primarySwatch: Colors.red),
        home: new HomePage(),
      }; //MaterialApp
    }
  }
}