import 'package:flutter/material.dart';

class IsabelaForm extends StatelessWidget{
  final String label;
  final Function()? onEditingComplete;
  final TextEditingController? userInputController;

  IsabelaForm({required this.label, this.userInputController, this.onEditingComplete});

  @override 
  Widget build(BuildContext context){
    return TextFormField(
      controller: userInputController ,
      decoration: InputDecoration(
        label: Text(label),
      ),
      onEditingComplete: onEditingComplete,
    );
  }
}