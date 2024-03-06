import 'package:flutter/material.dart';
import 'package:job_quest/features/home/widgets/popular_job_section.dart';
import 'package:job_quest/features/home/widgets/recent_job_section.dart';
import 'package:job_quest/features/home/widgets/search_filter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFE5E5E5),
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF009688),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: IconButton(
                icon: Icon(Icons.sort),
                color: Colors.white,
                onPressed: () {},
              ),
            ),
          ),
          actions: <Widget>[
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
          ],
        ),
        body: Container(
          color: Color(0xFFE5E5E5),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                SearchFilterWidget(),
                PopularJobSection(),
                RecentJobSection()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
