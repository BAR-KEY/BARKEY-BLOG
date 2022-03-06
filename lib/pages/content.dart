import 'package:barkey_blog/config/palette.dart';
import 'package:barkey_blog/pages/content_edit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class Content extends StatelessWidget {
  Content(
      {Key? key,
      required this.title,
      required this.text,
      this.setTitle,
      this.setText,
      this.editData})
      : super(key: key);

  String title, text;
  // ignore: prefer_typing_uninitialized_variables
  var editData, setTitle, setText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BARKEY BLOG"),
      ),
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
              style: const TextStyle(fontSize: 15, color: Palette.subTextColor),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: IconButton(
            onPressed: () {
              Get.to(() => ContentEdit(
                    title: title,
                    text: text,
                    editData: editData,
                    setTitle: setTitle,
                    setText: setText,
                  ));
            },
            icon: const Icon(Icons.edit)),
        backgroundColor: Palette.subColor,
      ),
    );
  }
}
