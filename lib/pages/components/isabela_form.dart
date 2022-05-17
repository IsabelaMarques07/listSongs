import 'package:flutter/material.dart';

class IsabelaForm extends StatelessWidget{
  final String label;
  final Function()? onEditingComplete;
  final TextEditingController? userInputController;
  final FocusNode? focusNode;

  IsabelaForm({
    required this.label, 
    this.userInputController, 
    this.onEditingComplete,
    this.focusNode
    });

  @override 
  Widget build(BuildContext context){
    return TextFormField(
      focusNode: focusNode,
      controller: userInputController ,
      decoration: InputDecoration(
        label: Text(label),
      ),
      onEditingComplete: onEditingComplete,
    );
  }
}