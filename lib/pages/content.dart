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
      this.editData,
      this.deleteData})
      : super(key: key);

  String title, text;
  // ignore: prefer_typing_uninitialized_variables
  var editData, setTitle, setText, deleteData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BARKEY BLOG"),
        actions: [
          IconButton(
              onPressed: () {
                Get.defaultDialog(
                  title: '삭제 하시겠습니까?',
                  content: const Text("게시물이 삭제 됩니다."),
                  barrierDismissible: false,
                  onCancel: () {},
                  textCancel: '취소',
                  onConfirm: () {
                    deleteData();
                  },
                  textConfirm: '삭제',
                  backgroundColor: Palette.mainColor,
                  buttonColor: Palette.subColor,
                  cancelTextColor: Palette.mainTextColor,
                  confirmTextColor: Palette.mainTextColor,
                );
              },
              icon: const Icon(Icons.delete))
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style:
                    const TextStyle(fontSize: 30, color: Palette.mainTextColor),
              ),
              Text(
                text,
                style: const TextStyle(
                    fontSize: 15, color: Palette.subTextColor, height: 1.8),
              )
            ],
          ),
        ),
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
