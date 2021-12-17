import 'package:flutter/material.dart';
import 'package:flutter_ducafecat_news/global.dart';
import 'package:flutter_ducafecat_news/pages/index/index.dart';
import 'package:flutter_ducafecat_news/routes.dart';

// void main() => runApp(MyApp());

void main() => Global.init().then((e) => runApp(MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      routes: staticRoutes,
      home: IndexPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
