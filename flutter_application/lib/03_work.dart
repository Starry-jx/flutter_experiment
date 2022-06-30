// ignore_for_file: file_names, deprecated_member_use

import 'package:flutter/material.dart';

class ThreeWork extends StatelessWidget {
  const ThreeWork({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("第三章"),
      ),
      body: work(),
    );
  }

  Widget work() {
    return Column(
      children: <Widget>[
        const Center(
          child: Text(
            "Hello world",
            style: TextStyle(
                color: Colors.blue,
                fontSize: 18.0,
                height: 1.2,
                fontFamily: "Courier",
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.dashed),
          ),
        ),
        const Center(
            child: Text.rich(TextSpan(children: [
          TextSpan(text: "Home: "),
          TextSpan(
            text: "https://flutterchina.club",
            style: TextStyle(color: Colors.blue),
          ),
        ]))),
        Center(
          child: ElevatedButton(
            child: const Text("ElevatedButton"),
            onPressed: () {},
          ),
        ),
        Center(
          child: TextButton(
            child: const Text("TextButton"),
            onPressed: () {},
          ),
        ),
        Center(
          child: OutlineButton(
            child: const Text("OutlineButton"),
            onPressed: () {},
          ),
        ),
        Center(
          child: IconButton(
            icon: const Icon(Icons.thumb_up),
            onPressed: () {},
          ),
        ),
        Row(children: <Widget>[
          const Image(
            image: AssetImage("images/1.jpg"),
            width: 320.0,
            height: 180,
          ),
          Image.asset(
            "images/2.jpg",
            width: 180.0,
            height: 320.0,
          ),
// 模糊进度条(会执行一个旋转动画)
          CircularProgressIndicator(
            backgroundColor: Colors.grey[200],
            valueColor: const AlwaysStoppedAnimation(Colors.blue),
          ),
//进度条显示50%，会显示一个半圆
          CircularProgressIndicator(
            backgroundColor: Colors.grey[200],
            valueColor: const AlwaysStoppedAnimation(Colors.blue),
            value: .5,
          ),
        ]),
        // 模糊进度条(会执行一个动画)
        LinearProgressIndicator(
          backgroundColor: Colors.grey[200],
          valueColor: const AlwaysStoppedAnimation(Colors.blue),
        ),
//进度条显示50%
        LinearProgressIndicator(
          backgroundColor: Colors.grey[200],
          valueColor: const AlwaysStoppedAnimation(Colors.blue),
          value: .5,
        ),
      ],
    );
  }
}
