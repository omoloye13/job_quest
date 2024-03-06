import 'package:flutter/material.dart';

class SearchFilterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            margin: EdgeInsets.only(top: 8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.search),
                SizedBox(width: 8.0),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search here...',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 8.0),
        Container(
          margin: EdgeInsets.only(top: 8.0),
          decoration: BoxDecoration(
            color: Color(0xFF009688),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: IconButton(
            icon: Icon(Icons.filter_list),
            color: Colors.white,
            onPressed: () {
              // Add your filter icon onPressed logic here
            },
          ),
        ),
      ],
    );
  }
}
