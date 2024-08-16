import 'package:flutter/material.dart';
import 'package:todo_app/app_theme.dart';

class DefaultElevatedButton extends StatelessWidget {
  DefaultElevatedButton({required this.onPressed,required this.label});
String label;
VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed:onPressed,
        style: ElevatedButton.styleFrom(
            fixedSize: Size(MediaQuery.of(context).size.width,52)),
        child:Text(label,style:Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight:FontWeight.w400,color: AppTheme.white),),
    );
  }
}