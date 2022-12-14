import 'package:flutter/material.dart';
import 'package:projeto15/pages/details.page.dart';
import 'package:projeto15/pages/home_page.dart';
import 'package:projeto15/pages/login_page.dart';
import 'package:projeto15/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter NV1',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (_) => SplashPage(),
        '/loginpage': (_) => LoginPage(),
        '/homepage': (_) => HomePage(),
        '/details': (_) => DetailsPage(),
      },
    );
  }
}
