import 'package:flutter_web/material.dart';
import 'package:myportfolio/page/profile_page.dart';
import 'package:myportfolio/page/work_page.dart';

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
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF8F4E3),
        appBarTheme: AppBarTheme(color: Color(0xFFF8F4E3), elevation: 0.0),
        primaryColor: Color(0xFFF8F4E3),
        splashColor: Color(0xFFF8F4E3),
        fontFamily: "Montserrat",
      ),
      home: ProfilePage(),
    );
  }
}
