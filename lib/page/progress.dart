import 'package:flutter/material.dart';

class Progress extends StatefulWidget {
  const Progress({super.key});

  @override
  State<Progress> createState() => _ProgressState();
}

class _ProgressState extends State<Progress> {
  @override
  Widget build(BuildContext context) {
    return const Progressbody();
  }
}

class Progressbody extends StatefulWidget {
  const Progressbody({super.key});

  @override
  State<Progressbody> createState() => _ProgressbodyState();
}

class _ProgressbodyState extends State<Progressbody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red,
                ),
                height: 80,
                width: 100,
                child: const Center(child: Text("PHO Plant"))),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 80,
                width: 100,
                child: const Center(child: Text("200"))),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 80,
                width: 100,
                child: const Center(child: Text("400"))),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 80,
                width: 100,
                child: const Center(child: Text("600"))),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 80,
                width: 100,
                child: const Center(child: Text("800"))),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 80,
                width: 100,
                child: const Center(child: Text("1000"))),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 80,
                width: 100,
                child: const Center(child: Text("1200"))),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 80,
                width: 100,
                child: const Center(child: Text("1400"))),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 80,
                width: 100,
                child: const Center(child: Text("1600"))),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 80,
                width: 100,
                child: const Center(child: Text("1800"))),
          ],
        ),
        Row(
          children: [
            Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
                height: 80,
                width: 100,
                child: const Center(child: Text("GAS Plant"))),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 80,
                width: 100,
                child: const Center(child: Text("200"))),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 80,
                width: 100,
                child: const Center(child: Text("400"))),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 80,
                width: 100,
                child: const Center(child: Text("600"))),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 80,
                width: 100,
                child: const Center(child: Text("800"))),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 80,
                width: 100,
                child: const Center(child: Text("1000"))),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 80,
                width: 100,
                child: const Center(child: Text("1200"))),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 80,
                width: 100,
                child: const Center(child: Text("1400"))),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 80,
                width: 100,
                child: const Center(child: Text("1600"))),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 80,
                width: 100,
                child: const Center(child: Text("1800"))),
          ],
        ),
        Row(
          children: [
            Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green,
                ),
                height: 80,
                width: 100,
                child: const Center(child: Text("DELTA Plant"))),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 80,
                width: 100,
                child: const Center(child: Text("200"))),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 80,
                width: 100,
                child: const Center(child: Text("400"))),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 80,
                width: 100,
                child: const Center(child: Text("600"))),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 80,
                width: 100,
                child: const Center(child: Text("800"))),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 80,
                width: 100,
                child: const Center(child: Text("1000"))),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 80,
                width: 100,
                child: const Center(child: Text("1200"))),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 80,
                width: 100,
                child: const Center(child: Text("1400"))),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 80,
                width: 100,
                child: const Center(child: Text("1600"))),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 80,
                width: 100,
                child: const Center(child: Text("1800"))),
          ],
        ),
        Row(
          children: [
            Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.yellow,
                ),
                height: 80,
                width: 100,
                child: const Center(child: Text("ISONITE Plant"))),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 80,
                width: 100,
                child: const Center(child: Text("200"))),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 80,
                width: 100,
                child: const Center(child: Text("400"))),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 80,
                width: 100,
                child: const Center(child: Text("600"))),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 80,
                width: 100,
                child: const Center(child: Text("800"))),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 80,
                width: 100,
                child: const Center(child: Text("1000"))),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 80,
                width: 100,
                child: const Center(child: Text("1200"))),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 80,
                width: 100,
                child: const Center(child: Text("1400"))),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 80,
                width: 100,
                child: const Center(child: Text("1600"))),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 80,
                width: 100,
                child: const Center(child: Text("1800"))),
          ],
        ),
      ],
    );
  }
}
