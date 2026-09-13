import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  final String name;
  final String description;
  final String date;

  const TaskCard({
    super.key,
    required this.name,
    required this.description,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      tileColor: Colors.white,
      title: Text(name),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(description),
          Text(
            date,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
          ),
          Row(
            children: [
              Chip(
                label: Text('New'),
                backgroundColor: Colors.blue.withValues(alpha: 0.6),
                labelStyle: TextStyle(color: Colors.white),
              ),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete),
                color: Colors.red,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.edit, color: Colors.green),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
