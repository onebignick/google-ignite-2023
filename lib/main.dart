import 'package:flutter/material.dart';
import 'package:cloud9/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

// attemots to create a navbar
class _NavBarState extends State<NavBar> {
  int index = 0;
  final pages = [
    Center(child: Text('Page 1')),
    Center(child: Text('Page 2')),
    Center(child: Text('Page 3'))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (int newIndex) {
          setState(() {
            index = newIndex;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.email_outlined),
            label: 'Page 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: 'Page 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.videocam_outlined),
            label: 'Page 3',
          ),
        ],
      ),
    );
  }
}




// import 'package:cloud9/home.dart';
// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget{
//   const MyApp({Key? key}): super(key:key);
  
//   @override
//   Widget build(BuildContext context){
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Home(),
      
//     );
//   }
// }

// class NavBar extends StatefulWidget {
//   @override
//   const NavBar({super.key});
//   _NavBarState createState() => _NavBarState();
// }

// class _NavBarState extends State<NavBar> {
//   int index = 0;
//   final pages = [
//     Center(child: Text('Page 1')),
//     Center(child: Text('Page 2')),
//     Center(child: Text('Page 3'))
//   ];

//   @override
//   Widget build(BuildContext context) => Scaffold(
//     body: pages[index],
//     bottomNavigationBar: NavigationBar(
//         height: 60,
//         selectedIndex: index,
//         onDestinationSelected: (index) => setState(() => this.index = index),
//         destinations: [
//           NavigationDestination(
//             icon: Icon(Icons.email_outlined),
//             selectedIcon: Icon(Icons.email),
//             label: 'Page 1'),
//           NavigationDestination(
//             icon: Icon(Icons.chat_bubble_outline),
//             selectedIcon: Icon(Icons.email),
//             label: 'Page 2'),
//           NavigationDestination(
//             icon: Icon(Icons.videocam_outlined),
//             selectedIcon: Icon(Icons.videocam),
//             label: 'Page 3')
//         ],
//       ),
//   );
// }