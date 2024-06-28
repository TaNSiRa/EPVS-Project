import 'package:flutter/material.dart';

//---------------------------------------------------------

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page1Body();
  }
}

Color COS = Colors.pink.shade200;
Color COS2 = Colors.pink.shade200;

class Page1Body extends StatefulWidget {
  const Page1Body({Key? key}) : super(key: key);

  @override
  State<Page1Body> createState() => _Page1BodyState();
}

class _Page1BodyState extends State<Page1Body> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          COS01(),
          COS02(),
          COS03(),
        ],
      ),
    );
  }
}

class COS01 extends StatefulWidget {
  const COS01({super.key});

  @override
  State<COS01> createState() => _COS01State();
}

class _COS01State extends State<COS01> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: Colors.blue,
      child: const Text("STAGE1"),
    );
  }
}

class COS02 extends StatefulWidget {
  const COS02({super.key});

  @override
  State<COS02> createState() => _COS02State();
}

class _COS02State extends State<COS02> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: COS2,
      child: const Text("STAGE2"),
    );
  }
}

class COS03 extends StatefulWidget {
  const COS03({super.key});

  @override
  State<COS03> createState() => _COS03State();
}

class _COS03State extends State<COS03> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: COS,
      child: InkWell(
        onTap: () {
          COS = Colors.green;
          COS2 = Colors.blue;
          setState(() {});
        },
        child: const Text("STAGE3"),
      ),
    );
  }
}
