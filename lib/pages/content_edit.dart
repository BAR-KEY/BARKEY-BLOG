import 'package:flutter/material.dart';
import 'package:barkey_blog/config/palette.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class ContentEdit extends StatelessWidget {
  ContentEdit({
    Key? key,
    required this.title,
    required this.text,
    this.editData,
    this.setTitle,
    this.setText,
  }) : super(key: key);

  String title, text;
  // ignore: prefer_typing_uninitialized_variables
  var editData, setTitle, setText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('게시물 수정'),
        actions: [
          IconButton(
              onPressed: () {
                Get.defaultDialog(
                  title: '게시물을 수정 하시겠습니까?',
                  content: const Text("게시물이 수정 됩니다."),
                  barrierDismissible: false,
                  onCancel: () {
                    Get.back();
                  },
                  textCancel: '취소',
                  onConfirm: () {
                    editData();
                    Get.back();
                    Get.back();
                    Get.back();
                  },
                  textConfirm: '수정',
                  backgroundColor: Palette.mainColor,
                  buttonColor: Palette.subColor,
                  cancelTextColor: Palette.mainTextColor,
                  confirmTextColor: Palette.mainTextColor,
                );
              },
              icon: const Icon(Icons.check_rounded))
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(5),
        scrollDirection: Axis.vertical,
        child: Column(children: [
          TextFormField(
              onChanged: ((value) {
                setTitle(value);
              }),
              style: const TextStyle(color: Palette.mainTextColor),
              decoration: const InputDecoration(
                hintStyle: TextStyle(color: Palette.subTextColor),
              ),
              maxLines: 1,
              initialValue: title),
          TextFormField(
              onChanged: ((value) {
                setText(value);
              }),
              style: const TextStyle(color: Palette.mainTextColor, height: 1.8),
              decoration: const InputDecoration(
                hintStyle: TextStyle(color: Palette.subTextColor),
              ),
              keyboardType: TextInputType.multiline,
              maxLines: 27,
              initialValue: text)
        ]),
      ),
    );
  }
}
