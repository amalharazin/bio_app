import 'package:flutter/material.dart';
import 'package:vp18_bio_app1/screens/bio_screen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:BioScreen(

      ) ,

    );
  }
}
