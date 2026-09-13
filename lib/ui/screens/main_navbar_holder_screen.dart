import 'package:crud_app/ui/screens/new_task_screen.dart';
import 'package:crud_app/ui/screens/progress_task_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/tm_appbar.dart';

class MainNavbarHolderScreen extends StatefulWidget {
  const MainNavbarHolderScreen({super.key});

  @override
  State<MainNavbarHolderScreen> createState() => _MainNavbarHolderScreenState();
}

class _MainNavbarHolderScreenState extends State<MainNavbarHolderScreen> {

  int _selectedIndex = 0;

  final List<Widget> _screens = [
    NewTaskScreen(),
    ProgressTaskScreen(),
    ProgressTaskScreen(),
    ProgressTaskScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TMAppBar(),
      body: _screens[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (int index){
          _selectedIndex = index;
          setState(() {});
        },
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.new_label_outlined),
            label: 'New',
          ),
          NavigationDestination(
            icon: Icon(Icons.refresh),
            label: 'Progress',
          ),
          NavigationDestination(
            icon: Icon(Icons.cancel),
            label: 'Cancelled',
          ),
          NavigationDestination(
            icon: Icon(Icons.done),
            label: 'Completed',
          ),
        ],
      )
    );
  }
}