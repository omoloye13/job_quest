import 'package:flutter/material.dart';

class JobItem extends StatelessWidget {
  const JobItem({super.key, required this.image, required this.headerTitle});

  final String image;
  final String headerTitle;
  // final String amount;
  @override
  Widget build(BuildContext context) {
    return Container(
      //  width: 260,
      // height: 20,
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Image.asset(image, width: 80, height: 30),
        Column(
          children: [
            Text(
              headerTitle,
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Full Time",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            )
          ],
        ),
        Text(
          "\$4500/m",
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
      ]),
    );
  }
}
