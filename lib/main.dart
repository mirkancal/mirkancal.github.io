import 'package:flutter/material.dart';
import 'package:personal_website/page/profile_page.dart';
import 'package:personal_website/page/work_page.dart';
import 'package:personal_website/theme.dart';

main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/work': (context) => WorkPage(),
      },
      theme: lightTheme(context),
      home: ProfilePage(),
    );
  }
}
