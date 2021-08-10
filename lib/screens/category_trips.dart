import 'package:flutter/material.dart';

class CategoryTripsScreen extends StatelessWidget {

  // final String categoryId;
// final String categoryTitle;
//
//   const CategoryTripsScreen(
//       this.categoryId,
//       this.categoryTitle
//       );
//


  @override
  Widget build(BuildContext context) {
    final routArguments = ModalRoute.of(context)!.settings.
    arguments as Map<String, String>;
    final categoryId = routArguments['id'];
    final categoryTitle = routArguments['title'];

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: Text(
        "قائمه الرحلات"
      ),
    );
  }
}
