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
                showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text(
                          '게시물을 등록 하시겠습니까?',
                        ),
                        content: const Text("게시물이 등록 됩니다."),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('취소')),
                          TextButton(
                              onPressed: () {
                                updateData();
                                Navigator.pop(context);
                              },
                              child: const Text('등록')),
                        ],
                      );
                    });
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
