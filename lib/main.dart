import 'package:flutter/material.dart';
import 'package:traveling_app/screens/categories_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:traveling_app/screens/category_trips.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Traveling App',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ar', 'AE'), // English, no country code
      ],
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.amber,
        fontFamily: "ElMessiri",
        textTheme: ThemeData.light().textTheme.copyWith(
          headline5: TextStyle(
            color: Colors.blue,
            fontSize: 24,
            fontFamily: "ElMessiri",
            fontWeight: FontWeight.bold,
          ),
          headline6: TextStyle(
            color: Colors.white,
            fontSize: 26,
            fontFamily: "ElMessiri",
            fontWeight: FontWeight.bold,
          ),
        )
      ),
      home: CategoriesScreen(),
      routes: {
        '/category-trips' : (ctx)=> CategoryTripsScreen(),
      },
    );
  }
}


