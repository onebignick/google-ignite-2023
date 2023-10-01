import 'package:cloud9/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Enliven',
        theme: ThemeData(
          primarySwatch: MaterialColor(
            Colors.purple.shade300.value,
            {
              50: Colors.purple.shade50,
              100: Colors.purple.shade100,
              200: Colors.purple.shade200,
              300: Colors.purple.shade300,
              400: Colors.purple.shade400,
              500: Colors.purple.shade500,
              600: Colors.purple.shade600,
              700: Colors.purple.shade700,
              800: Colors.purple.shade800,
              900: Colors.purple.shade900
            }
          ),
        ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<HomePageContent> _pages = [
    const HomePageContent(title: 'Home', body: 'Welcome to the Home Page'),
    const HomePageContent(title: 'Resources', body: 'This is the Resources Page'),
    const HomePageContent(title: 'Services', body: 'This is the Services Page'),
  ];

  TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextFormField(
          controller: _searchController,
          decoration: InputDecoration(
            hintText: 'Search...',
            border: InputBorder.none,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Handle the search action here
              // You can use _searchController.text to access the search query.
            },
          ),
        ],
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.folder),
            label: 'Resources',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Services',
          ),
        ],
      ),
    );
  }
}

class HomePageContent extends StatelessWidget {
  final String title;
  final String body;

  const HomePageContent({Key? key, required this.title, required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
