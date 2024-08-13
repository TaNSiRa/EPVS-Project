import 'package:flutter/material.dart';

import 'P10PROGRESS/P10PROGRESSMAIN.dart';
import 'P12PROGRESS/P12PROGRESSMAIN.dart';
import 'P14PROGRESS/P14PROGRESSMAIN.dart';

class Page14 extends StatelessWidget {
  const Page14({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page14Body();
  }
}

class Page14Body extends StatelessWidget {
  const Page14Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return P14PROGRESSMAIN();
  }
}
