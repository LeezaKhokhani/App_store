import 'package:appstore/playstore/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'appstore/apphomepage.dart';
import 'global.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return (Globals.platForm)
        ? MaterialApp(
         debugShowCheckedModeBanner: false,
         theme: ThemeData(useMaterial3: true,
      ),
        home: const Homepage(),
    )
        : const CupertinoApp(
        debugShowCheckedModeBanner: false,
        home: CupertinoPageScaffold(
        child: CupertinoHomePage(),
      ),
    );
  }
}