import 'package:flutter/material.dart';

class AppSectionCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback onDelete;
  const AppSectionCard({super.key,
    required this.title,
    required this.subtitle,
    required this.onDelete
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: IconButton(onPressed: onDelete, icon: const Icon(Icons.delete,
        color: Colors.red,
        )),
      )
    );
  }
}
