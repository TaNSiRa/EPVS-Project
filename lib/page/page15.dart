import 'package:flutter/material.dart';

import 'P10PROGRESS/P10PROGRESSMAIN.dart';
import 'P12PROGRESS/P12PROGRESSMAIN.dart';
import 'P14PROGRESS/P14PROGRESSMAIN.dart';
import 'P15PROGRESS/P15PROGRESSMAIN.dart';

class Page15 extends StatelessWidget {
  const Page15({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page15Body();
  }
}

class Page15Body extends StatelessWidget {
  const Page15Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return P15PROGRESSMAIN();
  }
}
