import 'package:flutter/material.dart';
import "../screens/screens.dart";

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  int _getCurrentIndex(BuildContext context) {
    final currentRoute = ModalRoute.of(context)?.settings.name;
    if (currentRoute == HomeScreen.routeName) {
      return 0;
    } else if (currentRoute == ResourcesScreen.routeName) {
      return 1;
    } else if (currentRoute == ServicesScreen.routeName) {
      return 2;
    }
    return 0; // Default to 0 if the route is not recognized.
  } 

  @override
  Widget build(BuildContext context) {
    final currentIndex = _getCurrentIndex(context);

    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.purple,
      unselectedItemColor: Colors.purple.withAlpha(100),
      currentIndex: currentIndex,
      onTap: (index) {
        if (index == 0) {
          Navigator.pushReplacementNamed(context, HomeScreen.routeName);
        } else if (index == 1) {
          Navigator.pushReplacementNamed(context, ResourcesScreen.routeName);
        } else if (index == 2) {
          Navigator.pushNamed(context, ServicesScreen.routeName);
        }
      },
      items: [
        BottomNavigationBarItem(
          icon: IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, HomeScreen.routeName);
            },
            icon: const Icon(Icons.home),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, ResourcesScreen.routeName);
            },
            icon: const Icon(Icons.local_library),
          ),
          label: 'Resources',
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, ServicesScreen.routeName);
            },
            icon: const Icon(Icons.diversity_1),
          ),
          label: 'Services',
        ),
      ],
    );
  }
}
