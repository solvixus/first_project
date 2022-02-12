// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
          print('$count');
        },
        child: Icon(
          Icons.ac_unit,
          color: Colors.white,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                setState(() {
                  count++;
                }); // 화면을 다시 build하는 구문 setstate()
                print('$count');
              },
              child: const Text('Plus')),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  count = 0;
                }); // 화면을 다시 build하는 구문 setstate()
                print('$count');
              },
              child: const Text('reset')),
          Center(child: Text('$count')),
        ],
      ),
    );
  }
}
