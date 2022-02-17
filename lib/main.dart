import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(title: 'BARKEY BLOG', home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BARKEY BLOG')),
      body: const Text('hi'),
    );
  }
}
