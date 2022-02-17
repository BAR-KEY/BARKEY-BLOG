// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:barkey_blog/config/palette.dart';
import 'package:flutter/material.dart';

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
                updateData();
                Navigator.pop(context);
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
