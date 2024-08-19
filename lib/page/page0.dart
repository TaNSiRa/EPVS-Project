import 'package:flutter/material.dart';
import 'TEST.dart';
import 'page1.dart';
import 'page10.dart';
import 'page11.dart';
import 'page13.dart';
import 'page17.dart';
import 'page5.dart';
import 'page7.dart';
import 'page8.dart';
import 'page9.dart';

bool isChecked = false;

class Page0 extends StatelessWidget {
  const Page0({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page8();
  }
}

class Page0Body extends StatelessWidget {
  const Page0Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      // child: Container(
      //     height: 100,
      //     width: 200,
      //     color: Colors.orange,
      //     child: const Center(
      //         child: Text("initial Page \nor do something wrong"))),
      child: FILEpicfunction(),
    );
  }
}
