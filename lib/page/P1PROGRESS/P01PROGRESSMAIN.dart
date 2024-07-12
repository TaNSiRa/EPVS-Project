import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<P01PROGRESSGETDATA_Bloc>().add(P01PROGRESSGETDATA_GET());
  }

  @override
  Widget build(BuildContext context) {
    List<P01PROGRESSGETDATAclass> _datain = widget.data ?? [];
    return Column(
      children: [
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
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,
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
                    color: _data.STEP01 == 'YES'
                        ? Colors.green
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
                        ? Colors.green
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
                        ? Colors.green
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
                        ? Colors.green
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
                        ? Colors.green
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
                        ? Colors.green
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
                        ? Colors.green
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
                        ? Colors.green
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
                        ? Colors.green
                        : Colors.grey.shade500,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
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
