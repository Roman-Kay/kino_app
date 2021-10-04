import 'package:flutter/material.dart';
import 'package:kino_app/widgets/auth/auth_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Color.fromRGBO(3, 37, 65, 1)),
        primarySwatch: Colors.blue,
      ),
      home: AuthWidget(),
    );
  }
}
