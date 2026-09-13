import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      tileColor: Colors.white,
      title: Text('Title will be here'),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Description of task'),
          Text(
            'Date: 21/04/2002',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          Row(
            children: [
              Chip(
                label: Text('New'),
                backgroundColor: Colors.blue.withValues(
                  alpha: 0.6,
                ),
                labelStyle: TextStyle(color: Colors.white),
              ),
              Spacer(),
              IconButton(onPressed: () {}, icon: Icon(Icons.delete),color: Colors.red,),
              IconButton(onPressed: () {}, icon: Icon(Icons.edit,color: Colors.green,),),
            ],
          ),
        ],
      ),
    );
  }
}
