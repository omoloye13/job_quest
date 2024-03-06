import 'package:flutter/material.dart';
import 'package:job_quest/features/message/widgets/chat_list.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFE2E2E2),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text('Message'),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Add your search functionality here
              },
            ),
          ],
        ),
        body: Container(
          color: Color(0xFFE2E2E2),
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              ChatList(
                headerTitle: "Rozanne Barrienties",
                title: "A wonderful serenity has taken...",
              ),
              SizedBox(
                height: 10,
              ),
              ChatList(
                headerTitle: "Rozanne Barrienties",
                title: "A wonderful serenity has taken...",
              ),
              SizedBox(
                height: 10,
              ),
              ChatList(
                headerTitle: "Rozanne Barrienties",
                title: "A wonderful serenity has taken...",
              ),
              SizedBox(
                height: 10,
              ),
              ChatList(
                headerTitle: "Rozanne Barrienties",
                title: "A wonderful serenity has taken...",
              ),
              SizedBox(
                height: 10,
              ),
              ChatList(
                headerTitle: "Rozanne Barrienties",
                title: "A wonderful serenity has taken...",
              ),
              SizedBox(
                height: 10,
              ),
              ChatList(
                headerTitle: "Rozanne Barrienties",
                title: "A wonderful serenity has taken...",
              ),
              SizedBox(
                height: 10,
              ),
              ChatList(
                headerTitle: "Rozanne Barrienties",
                title: "A wonderful serenity has taken...",
              ),
              SizedBox(
                height: 10,
              ),
              ChatList(
                headerTitle: "Rozanne Barrienties",
                title: "A wonderful serenity has taken...",
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
