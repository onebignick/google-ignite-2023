import 'package:flutter/material.dart';
import 'screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Enliven',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      initialRoute: '/',
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        ResourcesScreen.routeName: (context) => const ResourcesScreen(),
        PostScreen.routeName: (context) => const PostScreen(),
        ServicesScreen.routeName: (context) => const ServicesScreen(),
        WorkshopScreen.routeName: (context) => const WorkshopScreen(),
      },
    );
  }
}
