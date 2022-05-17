import 'package:flutter/material.dart';

class IsabelaCard extends StatelessWidget{
  final String leftText;
  final String rightText;


  IsabelaCard({required this.leftText, required this.rightText});

  @override 
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Color.fromARGB(255, 77, 63, 202), width: 2)
      ),
      height: 60,
      child: Row(
        children: [
          Text(leftText),
          Text(rightText)
        ],
        ),
    );
  }
}