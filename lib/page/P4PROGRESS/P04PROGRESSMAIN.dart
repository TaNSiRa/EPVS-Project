// ignore_for_file: prefer_const_constructors, no_leading_underscores_for_local_identifiers, must_be_immutable, file_names
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/BlocEvent/04-04-P04PROGRESSGETDATA.dart';

class P04PROGRESSMAIN extends StatefulWidget {
  P04PROGRESSMAIN({
    super.key,
    this.data,
  });
  List<P04PROGRESSGETDATAclass>? data;

  @override
  State<P04PROGRESSMAIN> createState() => _P04PROGRESSMAINState();
}

class _P04PROGRESSMAINState extends State<P04PROGRESSMAIN> {
  @override
  void initState() {
    super.initState();
    context.read<P04PROGRESSGETDATA_Bloc>().add(P04PROGRESSGETDATA_GET());
  }

  @override
  Widget build(BuildContext context) {
    List<P04PROGRESSGETDATAclass> _datain = widget.data ?? [];
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: ShaderMask(
              shaderCallback: (bounds) => LinearGradient(
                colors: const [Colors.blueAccent, Colors.lightBlueAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ).createShader(bounds),
              child: Text(
                'GATEWAY : PROGRESS',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Row(children: [
          Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.teal.shade500,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                ),
                color: Colors.black,
              ),
              height: 40,
              width: 100,
              child: Center(
                  child: Text(
                "PLANT",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ))),
          Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.teal.shade500,
                ),
                borderRadius: BorderRadius.circular(0),
                color: Colors.black,
              ),
              height: 40,
              width: 100,
              child: Center(
                  child: Text(
                "ORDER",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ))),
          Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.teal.shade500,
                ),
                borderRadius: BorderRadius.circular(0),
                color: Colors.black,
              ),
              height: 40,
              width: 100,
              child: Center(
                  child: Text(
                "MAT",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ))),
          Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.teal.shade500,
                ),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                ),
                color: Colors.black,
              ),
              height: 40,
              width: 900,
              child: Center(
                  child: Text(
                "PROGRESS",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ))),
        ]),
        // InkWell(
        //   onDoubleTap: () {
        //     context
        //         .read<P01PROGRESSGETDATA_Bloc>()
        //         .add(P01PROGRESSGETDATA_GET2());
        //   },
        //   onLongPress: () {
        //     context
        //         .read<P01PROGRESSGETDATA_Bloc>()
        //         .add(P01PROGRESSGETDATA_GET3());
        //   },
        //   child: Container(
        //     height: 40,
        //     width: 100,
        //     color: Colors.red,
        //   ),
        // ),
        ..._datain.map((_data) {
          return Row(
            children: [
              Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    color: Colors.teal.shade500,
                  ),
                  height: 80,
                  width: 100,
                  child: Center(
                      child: Text(
                    _data.PLANT,
                    style: TextStyle(color: Colors.white),
                  ))),
              Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.teal.shade400,
                  ),
                  height: 80,
                  width: 100,
                  child: Center(
                      child: Text(
                    _data.ORDER,
                    style: TextStyle(color: Colors.white),
                  ))),
              Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.teal.shade300,
                  ),
                  height: 80,
                  width: 100,
                  child: Center(
                      child: Text(
                    _data.MAT,
                    style: TextStyle(color: Colors.white),
                  ))),
              Container(
                  decoration: BoxDecoration(
                    color: _data.STEP01 == 'YES'
                        ? Colors.greenAccent
                        : Colors.grey.shade500,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 80,
                  width: 100,
                  child: Center(child: Text("200"))),
              Container(
                  decoration: BoxDecoration(
                    color: _data.STEP02 == 'YES'
                        ? Colors.greenAccent
                        : Colors.grey.shade500,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 80,
                  width: 100,
                  child: const Center(child: Text("400"))),
              Container(
                  decoration: BoxDecoration(
                    color: _data.STEP03 == 'YES'
                        ? Colors.greenAccent
                        : Colors.grey.shade500,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 80,
                  width: 100,
                  child: const Center(child: Text("600"))),
              Container(
                  decoration: BoxDecoration(
                    color: _data.STEP04 == 'YES'
                        ? Colors.greenAccent
                        : Colors.grey.shade500,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 80,
                  width: 100,
                  child: const Center(child: Text("800"))),
              Container(
                  decoration: BoxDecoration(
                    color: _data.STEP05 == 'YES'
                        ? Colors.greenAccent
                        : Colors.grey.shade500,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 80,
                  width: 100,
                  child: const Center(child: Text("1000"))),
              Container(
                  decoration: BoxDecoration(
                    color: _data.STEP06 == 'YES'
                        ? Colors.greenAccent
                        : Colors.grey.shade500,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 80,
                  width: 100,
                  child: const Center(child: Text("1200"))),
              Container(
                  decoration: BoxDecoration(
                    color: _data.STEP07 == 'YES'
                        ? Colors.greenAccent
                        : Colors.grey.shade500,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 80,
                  width: 100,
                  child: const Center(child: Text("1400"))),
              Container(
                  decoration: BoxDecoration(
                    color: _data.STEP08 == 'YES'
                        ? Colors.greenAccent
                        : Colors.grey.shade500,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 80,
                  width: 100,
                  child: const Center(child: Text("1600"))),
              Container(
                  decoration: BoxDecoration(
                    color: _data.STEP09 == 'YES'
                        ? Colors.greenAccent
                        : Colors.grey.shade500,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                  ),
                  height: 80,
                  width: 100,
                  child: const Center(child: Text("1800"))),
            ],
          );
        })
      ],
    );
  }
}
