import 'package:flutter/material.dart';

void main() {
  runApp( App());
}
class App extends StatelessWidget {
   const App ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     theme:ThemeData(),
     themeMode:ThemeMode.system,

    );
  }
}

