import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
        home: AnimatedSplashScreen(
            duration: 3000,
            splash: Icons.home,
            nextScreen: MainScreen(),
            splashTransition: SplashTransition.rotationTransition,
            backgroundColor: Colors.blue));
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: Colors.blueGrey,
      title: Center(child: Text("package \n Animated_splash_screen")),
    ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  height: 200,
                  width: 80,
                  color: Colors.blue,
                ),
                Container(
                  height: 200,
                  width: 80,
                  color: Colors.orange,
                ),
                Container(
                  height: 200,
                  width: 80,
                  color: Colors.purple,
                ),
                Container(
                  height: 200,
                  width: 80,
                  color: Colors.red,
                ),
              ]),
              Container(
                height: 200,
                width: 320,
                color: Colors.green,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  height: 200,
                  width: 80,
                  color: Colors.blue,
                ),
                Container(
                  height: 200,
                  width: 80,
                  color: Colors.orange,
                ),
                Container(
                  height: 200,
                  width: 80,
                  color: Colors.purple,
                ),
                Container(
                  height: 200,
                  width: 80,
                  color: Colors.red,
                ),
              ]),
            ]),
          ),
        ),
      ),
    );
  }
}
