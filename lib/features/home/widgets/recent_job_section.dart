import 'package:flutter/material.dart';
import 'package:job_quest/features/home/widgets/job_item.dart';
// import 'package:job_quest/features/home/widgets/job_card.dart';

class RecentJobSection extends StatelessWidget {
  const RecentJobSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      margin: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recent Post",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "show all",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ],
          ),
          // SizedBox(
          //   height: 5.0,
          // ),
          SizedBox(
            height: 450,
            child: ListView(
              // scrollDirection: Axis.horizontal,

              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: JobItem(
                    image: "assets/images/facebbok.png",
                    headerTitle: "UI/UX Designer",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: JobItem(
                    image: "assets/images/spotify.png",
                    headerTitle: "Product Designer",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: JobItem(
                    image: "assets/images/netflix.png",
                    headerTitle: "Visual Designer",
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
