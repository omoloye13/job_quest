import 'package:flutter/material.dart';
// import 'package:job_quest/auth/widget/images.dart';

class DividerRow extends StatelessWidget {
  const DividerRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        child: Row(
          children: [
            Expanded(
              child: Divider(
                color: Colors.grey,
                thickness: 2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'Or Continue with',
                style: TextStyle(color: Colors.grey, fontSize: 16.0),
              ),
            ),
            Expanded(
              child: Divider(
                color: Colors.grey,
                thickness: 2,
              ),
            ),
            // Images(),
          ],
        ),
      ),
    );
  }
}
