import 'package:flutter/material.dart';
import 'package:job_quest/features/home/widgets/job_card.dart';

class PopularJobSection extends StatelessWidget {
  const PopularJobSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Popular Job",
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
          SizedBox(
            height: 20.0,
          ),
          SizedBox(
            height: 210,
            child: ListView(
              scrollDirection: Axis.horizontal,
              // padding: EdgeInsets.only(right: 20),
              children: [
                Padding(
                  // padding: const EdgeInsets.all(8.0),
                  padding: EdgeInsets.only(right: 20),
                  child: JobCard(
                    image: "assets/images/google.png",
                    company: "Google",
                    headerTitle: 'Lead Product Manager',
                    subTitle: "\$2500/m ",
                    title: " Toronto, Canada",
                  ),
                ),
                JobCard(
                  image: "assets/images/spotify.png",
                  company: "Spotify",
                  headerTitle: 'Senior UI/Ux Designer',
                  subTitle: "\$2500/m ",
                  title: " Texas, USA",
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
