import 'package:flutter/material.dart';

import '03_work.dart';
import '05_work.dart';
import '08_work.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Catalogue(),
      //home: ScaffoldRoute(),
    );
  }
}

class Catalogue extends StatelessWidget {
  const Catalogue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: catalogue(context),
    );
  }

  Widget test_1() {
    return ListView.separated(
      itemCount: 100,
      //列表项构造器
      itemBuilder: (BuildContext context, int index) {
        return ListTile(title: Text("$index"));
      },
      //分割器构造器
      separatorBuilder: (BuildContext context, int index) {
        return index % 2 == 0
            ? const Divider(
                color: Colors.blue,
              )
            : const Divider(color: Colors.green);
      },
    );
  }

  Widget catalogue(BuildContext context) {
    return Column(
      children: <Widget>[
        const Center(
            child: Text("\n目录\n",
                style: TextStyle(color: Colors.black, fontSize: 40))),
        Center(
            child: MaterialButton(
          minWidth: 150,
          height: 50,
          padding: const EdgeInsets.all(20.0),
          shape: const RoundedRectangleBorder(),
          child: const Text("第三章"),
          textColor: Colors.white,
          color: Colors.blue,
          splashColor: Colors.grey,
          elevation: 10.0,
          highlightElevation: 20.0,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const ThreeWork();
            }));
          },
        )),
        Center(
            child: MaterialButton(
          minWidth: 150,
          height: 50,
          shape: const RoundedRectangleBorder(),
          child: const Text("第五章"),
          textColor: Colors.white,
          color: Colors.blue,
          splashColor: Colors.grey,
          elevation: 10.0,
          highlightElevation: 20.0,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const FifthWork();
            }));
          },
        )),
        Center(
            child: MaterialButton(
                minWidth: 150,
                height: 50,
                padding: const EdgeInsets.all(20.0),
                shape: const RoundedRectangleBorder(),
                child: const Text("第八章"),
                textColor: Colors.white,
                color: Colors.blue,
                splashColor: Colors.grey,
                elevation: 10.0,
                highlightElevation: 20.0,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return EightWork();
                    },
                  ));
                }))
      ],
    );
  }
}
