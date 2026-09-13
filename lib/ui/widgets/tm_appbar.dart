import 'package:flutter/material.dart';

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