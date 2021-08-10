
import 'package:flutter/material.dart';
import 'package:traveling_app/screens/category_trips.dart';

class CategoryItem extends StatelessWidget {
 final String title;
 final String imageUrl;
 final String id;

  CategoryItem(
      this.title,
      this.imageUrl,
      this.id
      );

  void selectCategory(BuildContext ctx){
   Navigator.of(ctx).pushNamed(
     "/category-trips",
     arguments: {
       "id" : id,
       "title" : title,
     }
   );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=> selectCategory(context) ,
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.network(
                imageUrl,
              height: 250.0,
                fit: BoxFit.cover,
            ),
          ),
          Container(
           // padding: EdgeInsets.all(10.0),
            alignment: Alignment.center,
            child: Text(
              title,
              style: Theme.of(context).textTheme.headline6,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.black.withOpacity(0.4),
            ),
          )
        ],
      ),
    );
  }
}
