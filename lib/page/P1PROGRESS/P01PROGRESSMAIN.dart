import 'package:flutter/material.dart';

import '../../bloc/BlocEvent/01-01-P01PROGRESSGETDATA.dart';
import 'P01PROGRESSVAR.dart';

class P01PROGRESSMAIN extends StatefulWidget {
  P01PROGRESSMAIN({
    super.key,
    this.data,
  });
  List<P01PROGRESSGETDATAclass>? data;
  @override
  State<P01PROGRESSMAIN> createState() => _P01PROGRESSMAINState();
}

class _P01PROGRESSMAINState extends State<P01PROGRESSMAIN> {
  @override
  Widget build(BuildContext context) {
    return const P01PROGRESSMAINbody();
  }
}

class P01PROGRESSMAINbody extends StatefulWidget {
  const P01PROGRESSMAINbody({super.key});

  @override
  State<P01PROGRESSMAINbody> createState() => _P01PROGRESSMAINbodyState();
}

class _P01PROGRESSMAINbodyState extends State<P01PROGRESSMAINbody> {
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
                child: Center(child: Text(P01PROGRESSVAR.datadummy[0].STEP01))),
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
