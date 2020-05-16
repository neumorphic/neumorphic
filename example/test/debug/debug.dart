import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'check.dart';
// import 'screens/compare.dart';

// flutter run -t test/debug/debug.dart
void main() => runApp(NeumorphicApp());

Color _color = Color(0xFFf2f2f2); // Colors.grey[200]

class NeumorphicApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //   statusBarColor: Colors.transparent,
    //   statusBarBrightness: Brightness.light,
    //   statusBarIconBrightness: Brightness.dark,
    //   systemNavigationBarIconBrightness: Brightness.dark,
    //   systemNavigationBarColor: _color,
    // ));

    return MaterialApp(
      title: 'Neumorphic App',
      theme: ThemeData(
        // platform: TargetPlatform.iOS,
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
        backgroundColor: Color.lerp(_color, Colors.black, 0.005),
        scaffoldBackgroundColor: _color,
        dialogBackgroundColor: Colors.grey[300],
        appBarTheme: AppBarTheme(
          brightness: Brightness.light,
          color: _color,
          textTheme: TextTheme(
            headline6: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
      ),
      home: CheckScreen(), // (predatorx7) Used to test user issues.
    );
  }
}