import 'package:crud_app/ui/screens/progress_task_screen.dart';
import 'package:flutter/material.dart';

class MainNavbarHolderScreen extends StatefulWidget {
  const MainNavbarHolderScreen({super.key});

  @override
  State<MainNavbarHolderScreen> createState() => _MainNavbarHolderScreenState();
}

class _MainNavbarHolderScreenState extends State<MainNavbarHolderScreen> {

  int _selectedIndex = 0;

  final List<Widget> _screens = [
    ProgressTaskScreen(),
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

class TMAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TMAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue.withOpacity(0.6),
      title: Row(
        spacing: 10,
        children: [
          CircleAvatar(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Meherab Hossen',style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              )),
              Text('mhnnishat0102@gmail.com',style: TextStyle(
                fontSize: 10,
                color: Colors.white,
              )),
            ],
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}