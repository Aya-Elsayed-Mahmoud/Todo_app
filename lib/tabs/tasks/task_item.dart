

import 'package:flutter/material.dart';
import 'package:todo_app/app_theme.dart';

class TaskItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    ThemeData theme=Theme.of(context);
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(vertical: 8,horizontal: 20),
      decoration:BoxDecoration(
        borderRadius:BorderRadius.circular(15) ,
        color:AppTheme.white ,
      ) ,
      child:
    Row(children: [
      Container(height: 62,width: 4,color: theme.primaryColor,margin: EdgeInsetsDirectional.only(end: 8),),
      Column(crossAxisAlignment: CrossAxisAlignment.start
        ,children: [
        Text('play basketball',style: theme.textTheme.titleMedium?.copyWith(color:theme.primaryColor)),
        Text('play basketball',style: theme.textTheme.titleSmall),
      ],),
      Spacer(),
      Container(
height: 34,
        width: 69,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          color: theme.primaryColor,
        ),
        child:
      Icon(Icons.check,
          color: AppTheme.white,
          size: 32),)
    ],

    ),

    );
  }
}
