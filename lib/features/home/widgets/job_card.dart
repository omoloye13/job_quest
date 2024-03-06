import 'package:flutter/material.dart';

class JobCard extends StatelessWidget {
  const JobCard(
      {super.key,
      required this.image,
      required this.headerTitle,
      required this.subTitle,
      required this.title,
      required this.company});
  final String image;
  final String headerTitle;
  final String subTitle;
  final String title;
  final String company;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260, // Set the width to 200 pixels
      height: 20,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 10.0,
                  ),
                  Image.asset(
                    image,
                    width: 50,
                    height: 40,
                  ),
                  Text(
                    company,
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  )
                ],
              ),
              Icon(
                Icons.favorite,
                color: Colors.red,
                size: 35,
              ),
            ],
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 20.0,
            ),
            Text(
              headerTitle,
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            )
          ]),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 35.0),
              Text(
                subTitle,
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                title,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              )
            ],
          )
        ],
      ),
    );
  }
}
