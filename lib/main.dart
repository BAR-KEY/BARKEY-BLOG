import 'package:barkey_blog/config/palette.dart';
import 'package:flutter/material.dart';
// import 'package:barkey_blog/config/palette.dart';
import '/config/style.dart' as style;

void main() {
  runApp(MaterialApp(
      title: 'BARKEY BLOG', home: const MyApp(), theme: style.theme));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BARKEY BLOG'),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.add))],
      ),
      drawer: Drawer(
          child: SingleChildScrollView(
        child: Column(children: const [Text('hi'), Text('hi'), Text('hi')]),
      )),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 5,
              ),
              Content(
                title: '제목으로 쓸것이고 글 길이가 길면 어떻게 될까',
                text:
                    '맛보기로 글의 앞부분이 노출될것입니다. 이거는 3줄로 설정했는데 3줄이면 내말을 다 담을 수 있을까 가능할까? 더 써도 되겠는데 될때까지 해보자 한줄만더 ㅋㅋ',
              ),
              Content(title: "f", text: "두줄 정도 적히면ㅇ ㅓ덯게 될까 실험중입니다 믓지게봐주세여 "),
              Content(title: "f", text: "두줄 정도 적히면ㅇ ㅓ덯게 될까 실험중입니다 믓지게봐주세여 "),
              Content(title: "f", text: "두줄 정도 적히면ㅇ ㅓ덯게 될까 실험중입니다 믓지게봐주세여 "),
              Content(title: "f", text: "두줄 정도 적히면ㅇ ㅓ덯게 될까 실험중입니다 믓지게봐주세여 "),
              Content(title: "f", text: "두줄 정도 적히면ㅇ ㅓ덯게 될까 실험중입니다 믓지게봐주세여 "),
            ]),
      ),
    );
  }
}

// ignore: must_be_immutable
class Content extends StatelessWidget {
  Content({Key? key, required this.title, required this.text})
      : super(key: key);

  String title, text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: Colors.transparent,
          style: BorderStyle.solid,
          width: 1,
        ),
      ),
      child: Row(children: [
        Image.network(
          'https://picsum.photos/id/421/100/100',
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 7,
              ),
              Text(
                title,
                style: const TextStyle(
                  color: Palette.mainTextColor,
                  fontSize: 15,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                text,
                style: const TextStyle(
                  color: Palette.subTextColor,
                  fontSize: 12,
                  overflow: TextOverflow.ellipsis,
                ),
                maxLines: 3,
              ),
            ],
          ),
        )
      ]),
    );
  }
}
