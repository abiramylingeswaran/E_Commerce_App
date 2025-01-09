import 'package:flutter/material.dart';

class ReusableBottomBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  ReusableBottomBar({
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      backgroundColor: Theme.of(context).bottomAppBarTheme.color,
      selectedItemColor: Theme.of(context).colorScheme.primary,
      unselectedItemColor: Theme.of(context).unselectedWidgetColor,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today),
          label: 'Calendar',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
    );
  }
}

class BottomBarApp extends StatefulWidget {
  @override
  _BottomBarAppState createState() => _BottomBarAppState();
}

class _BottomBarAppState extends State<BottomBarApp> {
  int _currentIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.blue,
        appBarTheme: AppBarTheme(backgroundColor: Colors.blue),
        colorScheme:
            ColorScheme.light(primary: const Color.fromARGB(255, 7, 57, 182)),
        unselectedWidgetColor: const Color.fromARGB(179, 41, 41, 43),
        bottomAppBarTheme:
            BottomAppBarTheme(color: const Color.fromARGB(255, 249, 249, 251)),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        appBarTheme: AppBarTheme(backgroundColor: Colors.black),
        colorScheme: ColorScheme.dark(primary: Colors.white),
        unselectedWidgetColor: Colors.grey,
        bottomAppBarTheme:
            BottomAppBarTheme(color: const Color.fromARGB(255, 33, 33, 33)),
      ),
      themeMode: ThemeMode.system,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Bottom Bar'),
        ),
        body: Center(
          child: Text(
            'Selected Tab: $_currentIndex',
            style: const TextStyle(fontSize: 24),
          ),
        ),
        bottomNavigationBar: ReusableBottomBar(
          currentIndex: _currentIndex,
          onTap: _onTabTapped,
        ),
      ),
    );
  }
}

void main() {
  runApp(BottomBarApp());
}
