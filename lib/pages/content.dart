import 'package:barkey_blog/config/palette.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Content extends StatelessWidget {
  Content({Key? key, required this.title, required this.text})
      : super(key: key);

  String title, text;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("BARKEY BLOG")),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style:
                    const TextStyle(fontSize: 30, color: Palette.mainTextColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                text,
                style:
                    const TextStyle(fontSize: 15, color: Palette.subTextColor),
              ),
            )
          ],
        ));
  }
}
