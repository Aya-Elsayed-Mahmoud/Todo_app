import 'package:flutter/material.dart';
import 'package:todo_app/home_screen.dart';
import 'package:todo_app/tabs/tasks/default_text_form_field.dart';

import 'app_theme.dart';

void main() {
  runApp(TodoApp());
}
class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
    routes:{
      HomeScreen.routeName:(_)=>HomeScreen(),

    } ,
theme:AppTheme.lightTheme ,
      darkTheme: AppTheme.darkTheme ,
   themeMode:ThemeMode.light,
    );
  }
}
