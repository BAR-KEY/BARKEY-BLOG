// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:barkey_blog/config/palette.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class ContentAdd extends StatelessWidget {
  ContentAdd({Key? key, this.setTitle, this.setText, this.updateData})
      : super(key: key);
  var setTitle, setText, updateData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('새 게시물'),
        actions: [
          IconButton(
              onPressed: () {
                Get.defaultDialog(
                  title: '게시물을 등록 하시겠습니까?',
                  content: const Text("게시물이 등록 됩니다."),
                  barrierDismissible: false,
                  onCancel: () {
                    Get.back();
                  },
                  textCancel: '취소',
                  onConfirm: () {
                    updateData();
                    Get.back();
                    Get.back();
                  },
                  textConfirm: '등록',
                  backgroundColor: Palette.mainColor,
                  buttonColor: Palette.subColor,
                  cancelTextColor: Palette.mainTextColor,
                  confirmTextColor: Palette.mainTextColor,
                );
              },
              icon: const Icon(Icons.check_rounded))
        ],
      ),
      body: Column(children: [
        TextFormField(
          onChanged: ((value) {
            setTitle(value);
          }),
          style: const TextStyle(color: Palette.mainTextColor),
          decoration: const InputDecoration(
            hintStyle: TextStyle(color: Palette.subTextColor),
            hintText: '제목 없음',
          ),
          maxLines: 1,
        ),
        TextFormField(
          onChanged: ((value) {
            setText(value);
          }),
          style: const TextStyle(color: Palette.mainTextColor),
          decoration: const InputDecoration(
            hintStyle: TextStyle(color: Palette.subTextColor),
            hintText: '내용을 입력하세요.',
          ),
          keyboardType: TextInputType.multiline,
        )
      ]),
    );
  }
}
