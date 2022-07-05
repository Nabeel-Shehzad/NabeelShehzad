import 'package:flutter/material.dart';

import 'contactForm.dart';

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
      title: 'Nabeel Shehzad',
      home: const MyHomePage(title: 'Apptreo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          widget.title,
          style: TextStyle(
            color: Color.fromRGBO(43, 187, 115,1),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.login,
              color: Color.fromRGBO(43, 187, 115,1),
            ),
            onPressed: () {
              //TODO: do something
            },
          )
        ],
      ),
      body: ContactForm(),
    );
  }
}
