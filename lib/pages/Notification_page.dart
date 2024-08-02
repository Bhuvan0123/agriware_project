import 'package:flutter/material.dart';

class Notifypage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 60,
        ),
        NotificationItem(
          message: 'Rain alert --  30 July',
        ),
        NotificationItem(
          message: 'Rain alert --  15 July',
        ),
      ],
    );
  }
}

class NotificationItem extends StatelessWidget {
  final String message;

  const NotificationItem({required this.message});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 70,
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(12),
            color: Colors.white.withOpacity(0.5)),
        child: Center(
          child: ListTile(
            leading: Icon(Icons.notifications),
            title: Text(
              message,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
