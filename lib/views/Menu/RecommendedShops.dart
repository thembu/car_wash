import 'package:flutter/cupertino.dart';

class RecommendedShops extends StatelessWidget {
  const RecommendedShops({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text('Recommended Shops',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        // Add list of shop cards here
      ],
    );
  }
}