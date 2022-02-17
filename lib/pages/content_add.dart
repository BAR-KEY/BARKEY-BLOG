import 'package:barkey_blog/config/palette.dart';
import 'package:flutter/material.dart';

class ContentAdd extends StatelessWidget {
  const ContentAdd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('새 게시물'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.check_rounded))
        ],
      ),
      body: Column(children: [
        TextFormField(
          style: const TextStyle(color: Palette.mainTextColor),
          decoration: const InputDecoration(
            hintStyle: TextStyle(color: Palette.subTextColor),
            hintText: '제목 없음',
          ),
          maxLines: 1,
        ),
        TextFormField(
          style: const TextStyle(color: Palette.mainTextColor),
          decoration: const InputDecoration(
            hintStyle: TextStyle(color: Palette.subTextColor),
            hintText: '내용을 입력하세요.',
          ),
        )
      ]),
    );
  }
}
