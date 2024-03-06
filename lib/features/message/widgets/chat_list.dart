import 'package:flutter/material.dart';

class ChatList extends StatelessWidget {
  const ChatList({
    super.key,
    required this.title,
    required this.headerTitle,
  });

  final String title;
  final String headerTitle;
  // final String rounded;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 20,
            child: CircleAvatar(
              radius: 18,
              backgroundImage: AssetImage('assets/images/profile3.jpg'),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              headerTitle,
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              title,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            )
          ],
        ),
        Container(
          width: 20,
          height: 20,
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Color(0xFF009688),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Text(
            '23',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        )
      ],
    ));
  }
}
