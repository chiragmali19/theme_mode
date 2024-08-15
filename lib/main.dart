import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Theme Changer'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _isDarkMode
                      ? const Icon(Icons.nightlight_round)
                      : const Icon(Icons.wb_sunny, color: Colors.yellow),
                  Switch(
                    value: _isDarkMode,
                    onChanged: (value) {
                      setState(() {
                        _isDarkMode = value;
                      });
                    },
                  ),
                ],
              ),
              Text(
                _isDarkMode ? 'Dark Mode' : 'Light Mode',
                style: const TextStyle(fontSize: 24),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// Here are the key points to remember from this code:

//1 Theme switching: To switch between light and dark themes, you need to use a ThemeProvider and update the theme property of the MaterialApp based on a boolean variable (in this case, _isDarkMode).
//2 Using a boolean variable: The _isDarkMode variable is used to determine which theme to use and to update the UI accordingly.
//3 MaterialApp nesting: In this code, the MaterialApp is nested inside another MaterialApp. This is done to allow the theme to be updated dynamically.
//4 Switch widget: The Switch widget is used to toggle the theme between light and dark modes.
//5 Row widget: A Row widget is used to hold the sun/moon icon and the switch.
//6 Icon selection: The icon displayed next to the switch is determined by the _isDarkMode variable.
//7 setState: The setState method is used to update the _isDarkMode variable and trigger a rebuild of the UI.
