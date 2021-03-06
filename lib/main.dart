import 'package:barkey_blog/config/palette.dart';
import 'package:barkey_blog/pages/content.dart';
import 'package:barkey_blog/pages/content_add.dart';
import 'package:flutter/material.dart';
// import 'package:barkey_blog/config/palette.dart';
import '/config/style.dart' as style;
import 'package:get/get.dart';

void main() {
  runApp(
      GetMaterialApp(title: 'BARKEY BLOG', home: MyApp(), theme: style.theme));
}

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<dynamic> data = [
    {
      "title": "안녕하세요",
      "text":
          "첫번재 글입니다. 첫번재 글입니다.첫번재 글입니다.첫번재 글입니다.첫번재 글입니다.첫번재 글입니다.첫번재 글입니다.첫번재 글입니다.첫번재 글입니다.첫번재 글입니다.첫번재 글입니다.첫번재 글입니다.첫번재 글입니다.첫번재 글입니다.첫번재 글입니다.첫번재 글입니다.첫번재 글입니다.첫번재 글입니다.첫번재 글입니다.첫번재 글입니다.첫번재 글입니다.첫번재 글입니다.첫번재 글입니다.첫번재 글입니다.첫번재 글입니다.첫번재 글입니다.첫번재 글입니다.첫번재 글입니다.첫번재 글입니다."
    },
    {
      "title": "두번째 글",
      "text":
          "두번째글입니다두번째글입니다두번째글입니다두번째글입니다두번째글입니다두번째글입니다두번째글입니다두번째글입니다두번째글입니다두번째글입니다두번째글입니다두번째글입니다두번째글입니다두번째글입니다두번째글입니다두번째글입니다2dkdidjdjifjdksajfkld아야어열아넘라ㅣ;ㅇㅁ너ㅏㅣㄹ어나ㅣㅁ렁나ㅣ머라ㅣ언마ㅣ런ㅇ마ㅣ러아ㅣ멀아ㅣㄴ"
    }
  ];
  // ignore: prefer_typing_uninitialized_variables
  var updateTitle;
  // ignore: prefer_typing_uninitialized_variables
  var updateText;

  setTitle(title) {
    setState(() {
      updateTitle = title;
    });
  }

  setText(text) {
    setState(() {
      updateText = text;
    });
  }

  updateData() {
    var updateData = {
      "title": updateTitle,
      "text": updateText,
    };
    setState(() {
      data.insert(data.length, updateData);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BARKEY BLOG'),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(() => ContentAdd(
                    setTitle: setTitle,
                    setText: setText,
                    updateData: updateData));
              },
              icon: const Icon(Icons.add))
        ],
      ),
      drawer: Drawer(
        backgroundColor: Palette.mainColor,
        child: ListTileTheme(
          textColor: Palette.mainTextColor,
          tileColor: Palette.subTextColor,
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: const CircleAvatar(
                  backgroundImage:
                      NetworkImage('https://via.placeholder.com/40'),
                ),
                accountEmail: const Text('사용자 계정'),
                accountName: const Text(' 사용자 이름'),
                onDetailsPressed: () {
                  // ignore: avoid_print
                  print('press details');
                },
                decoration: const BoxDecoration(
                    color: Palette.subColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    )),
              ),
              const ListTile(
                title: Text('태그 11'),
              ),
              const ListTile(
                title: Text('태그 2'),
              ),
              const ListTile(
                title: Text('태그 3'),
              ),
              const ListTile(
                title: Text('태그 4'),
              ),
              const ListTile(
                title: Text('태그 5'),
              ),
              const ListTile(
                title: Text('태그 6'),
              ),
              const ListTile(
                title: Text('태그 7'),
              ),
              const ListTile(
                title: Text('태그 8'),
              ),
              const ListTile(
                title: Text('태그 9'),
              ),
              const ListTile(
                title: Text('태그 10'),
              ),
              const ListTile(
                title: Text('태그 11'),
              ),
              const ListTile(
                title: Text('태그 12'),
              ),
              const ListTile(
                title: Text('태그 13'),
              ),
              const ListTile(
                title: Text('태그 14'),
              ),
              const ListTile(
                title: Text('태그 15'),
              ),
            ],
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (BuildContext c, int i) {
          editData() {
            var editData = {
              "title": updateTitle,
              "text": updateText,
            };
            setState(() {
              data.removeAt(i);
              data.insert(i, editData);
            });
          }

          deleteData() {
            setState(() {
              data.removeAt(i);
              Get.back();
              Get.back();
            });
          }

          return GestureDetector(
            onTap: () {
              Get.to(() => Content(
                    title: data[i]['title'] ?? '제목 없음',
                    text: data[i]['text'] ?? '내용 없음',
                    setTitle: setTitle,
                    setText: setText,
                    editData: editData,
                    deleteData: deleteData,
                  ));
            },
            child: _Content(
              title: data[i]['title'] ?? '제목 없음',
              text: data[i]['text'] ?? '내용 없음',
            ),
          );
        },
      ),
    );
  }
}

// ignore: must_be_immutable
class _Content extends StatelessWidget {
  _Content({Key? key, required this.title, required this.text})
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
                  height: 1.4,
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

//title이 유동적으로 바뀌지않는 오류발견