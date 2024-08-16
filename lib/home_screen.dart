import 'package:flutter/material.dart';
import 'package:todo_app/tabs/settings/settings_tab.dart';
import 'package:todo_app/tabs/tasks/add_task_bottom_sheet.dart';
import 'package:todo_app/tabs/tasks/tasks_tab.dart';

class HomeScreen extends StatefulWidget {

static const String routeName='/';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex=0;
  List<Widget> tabs=[
    TasksTabs(),
    SettingsTab()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentIndex],
      bottomNavigationBar:BottomAppBar(
        shape:CircularNotchedRectangle(),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        notchMargin: 10,
        child: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap:(index)
        {
          setState(() {
            currentIndex=index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.list,size: 32),
            label: 'List',

          ),
          BottomNavigationBarItem(
              label: 'Settings',
              icon: Icon(Icons.settings_outlined,
                  size: 32)
          )
        ],)
        ,),
      floatingActionButton:FloatingActionButton(
          onPressed: ()=>showModalBottomSheet(
              context: context, builder: (_)=>AddTaskBottomSheet()
          ),
          child:Icon(Icons.add,size: 32,) ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
