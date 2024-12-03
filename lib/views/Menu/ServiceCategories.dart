import 'package:flutter/cupertino.dart';

class ServiceCategories extends StatelessWidget {
  const ServiceCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text('Best Services',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        // Add list of service icons and descriptions here
      ],
    );
  }
}
