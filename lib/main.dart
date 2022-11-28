// Import Flutter required package
import 'package:flutter/material.dart';

// Dart code entry function
void main() {
  // Initialize a Widget as our application, remember everything within
  // flutter can be seen as a Widget (Text, Container, Button, etc.) even
  // our main application object will be a Widget.
  runApp(const MyApp());
}

// Our main application object, which extends the StatelessWidget class since
// the main app container won't change state at any given time.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  // Please review the following links to learn more about the
  // implemented widget:
  //
  // MaterialApp - https://api.flutter.dev/flutter/material/MaterialApp-class.html
  // Scaffold - https://api.flutter.dev/flutter/material/Scaffold-class.html
  // SafeArea - https://api.flutter.dev/flutter/widgets/SafeArea-class.html
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: SafeArea(
          child: Text("My First Flutter Application")
        ),
      ),
    );
  }
}
