import 'package:flutter/material.dart';
import 'package:job_quest/features/home/widgets/job_item.dart';
import 'package:job_quest/features/home/widgets/opportunity.dart';
import 'package:job_quest/features/home/widgets/search.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

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
          title: Text('Search'),
          centerTitle: true,
        ),
        body: Container(
          color: Color(0xFFE2E2E2),
          padding: EdgeInsets.all(10.0),
          child: ListView(
            children: [
              SearchFilterWidget(),
              SizedBox(height: 20),
              Opportunity(),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: JobItem(
                  image: "assets/images/facebbok.png",
                  headerTitle: "UI/UX Designer",
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: JobItem(
                  image: "assets/images/spotify.png",
                  headerTitle: "Product Designer",
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: JobItem(
                  image: "assets/images/netflix.png",
                  headerTitle: "Visual Designer",
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: JobItem(
                  image: "assets/images/netflix.png",
                  headerTitle: "Software Developer",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
