import 'package:flashy_tab_bar/flashy_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:paychecked/pages/pages.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'pages/AddTask.dart';
import 'pages/Tasks.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Time',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: SafeArea(
              child: Root(
                  index: _selectedIndex,
                  children: [Tasks(), AddTask(), Stats()])),
          bottomNavigationBar: FlashyTabBar(
            selectedIndex: _selectedIndex,
            showElevation: false,
            onItemSelected: (index) => setState(() {
              _selectedIndex = index;
            }),
            items: [
              FlashyTabBarItem(
                icon: Icon(Icons.timelapse),
                title: Text('Tasks'),
              ),
              FlashyTabBarItem(
                icon: Icon(Icons.add),
                title: Text('Add Task'),
              ),
              FlashyTabBarItem(
                icon: Icon(Icons.show_chart),
                title: Text('Stats'),
              ),
            ],
          ),
        ));
  }
}
