import 'package:cloud9/screens/home_screen.dart';
import 'package:cloud9/screens/resources_screen.dart';
import 'package:cloud9/screens/services_screen.dart';
import 'package:cloud9/theme.dart';
import 'package:flutter/material.dart';
import '../../screens/screens.dart';
import '../../theme.dart';

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({
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
      backgroundColor: AppPalette.topicPurple,
      selectedItemColor: AppPalette.primaryPurple,
      unselectedItemColor: AppPalette.primaryPurple.withOpacity(0.5),
      selectedFontSize: 14,
      unselectedFontSize: 12,
      currentIndex: currentIndex,
      onTap: (index) {
        // Handle navigation when a tab is tapped
        if (index == 0) {
          Navigator.popAndPushNamed(context, HomeScreen.routeName);
        } else if (index == 1) {
          Navigator.popAndPushNamed(context, ResourcesScreen.routeName);
        } else if (index == 2) {
          Navigator.pushNamed(context, ServicesScreen.routeName);
        }
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.collections_bookmark),
          label: 'Resources',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.diversity_1),
          label: 'Services',
        ),
      ],
    );
  }
}