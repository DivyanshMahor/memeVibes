

import 'package:flutter/material.dart';
import 'package:myapp/screens/meme_home_page.dart';

void main() {
  runApp(MemeApp());
}

class MemeApp extends StatelessWidget {
  const MemeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      primaryColor: Colors.red,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      scaffoldBackgroundColor: Colors.grey[200],

    ),
    home:MemeHomePage(),
    );
  }
}