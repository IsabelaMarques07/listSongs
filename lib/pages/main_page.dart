import 'package:flutter/material.dart';
import 'package:isabela_sir/pages/list_page.dart';
import 'package:isabela_sir/theme/theme.dart';


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: darkTheme,
      home: ListPage(),
    );
  }
}