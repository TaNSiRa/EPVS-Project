import 'package:flutter/material.dart';
import 'package:newmaster/page/changepassword.dart';
import 'package:newmaster/page/history.dart';
import 'package:newmaster/page/progress.dart';

import 'TEST.dart';
import 'page1.dart';

bool isChecked = false;

class Page0 extends StatelessWidget {
  const Page0({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Progress();
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
