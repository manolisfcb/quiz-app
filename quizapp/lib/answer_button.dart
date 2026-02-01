import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget{
  
  const AnswerButton(this.text, {this.onTap, super.key});
  final String text;
  final void Function() ? onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),

      ),
      child: Text(text, textAlign: TextAlign.center,),
    );
  }
}
