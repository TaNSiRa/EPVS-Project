import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/BlocEvent/03-03-P03PROGRESSGETDATA.dart';
import '../../bloc/BlocEvent/ChangePageEvent.dart';
import '../../data/global.dart';
import '../../mainBody.dart';
import '../page7.dart';

class P03PROGRESSMAIN extends StatefulWidget {
  P03PROGRESSMAIN({
    super.key,
    this.data,
  });
  List<P03PROGRESSGETDATAclass>? data;

  @override
  State<P03PROGRESSMAIN> createState() => _P03PROGRESSMAINState();
}

class _P03PROGRESSMAINState extends State<P03PROGRESSMAIN> {
  @override
  void initState() {
    super.initState();
    context.read<P03PROGRESSGETDATA_Bloc>().add(P03PROGRESSGETDATA_GET());
  }

  @override
  Widget build(BuildContext context) {
    List<P03PROGRESSGETDATAclass> _datain = widget.data ?? [];

    // Group data by PLANT
    Map<String, List<P03PROGRESSGETDATAclass>> groupedData = {};
    for (var item in _datain) {
      if (groupedData.containsKey(item.PLANT)) {
        groupedData[item.PLANT]!.add(item);
      } else {
        groupedData[item.PLANT] = [item];
      }
    }

    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: ShaderMask(
                shaderCallback: (bounds) => LinearGradient(
                  colors: [Colors.blueAccent, Colors.lightBlueAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ).createShader(bounds),
                child: Text(
                  'BP SOI 8 : PROGRESS',
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
          ...groupedData.entries.map((_entry) {
            String plant = _entry.key;
            List<P03PROGRESSGETDATAclass> steps = _entry.value;
            bool step01Complete = steps.any((step) => step.STEP01 == 'YES');
            bool step02Complete = steps.any((step) => step.STEP02 == 'YES');
            bool step03Complete = steps.any((step) => step.STEP03 == 'YES');
            bool step04Complete = steps.any((step) => step.STEP04 == 'YES');
            bool step05Complete = steps.any((step) => step.STEP05 == 'YES');
            bool step06Complete = steps.any((step) => step.STEP06 == 'YES');
            bool step07Complete = steps.any((step) => step.STEP07 == 'YES');
            bool step08Complete = steps.any((step) => step.STEP08 == 'YES');
            bool step09Complete = steps.any((step) => step.STEP09 == 'YES');
            int transactionsCount1 = _getPlantTransactionsCount1(plant);
            int transactionsCount2 = _getPlantTransactionsCount2(plant);
            int transactionsCount3 = _getPlantTransactionsCount3(plant);
            int transactionsCount4 = _getPlantTransactionsCount4(plant);
            int transactionsCount5 = _getPlantTransactionsCount5(plant);
            int transactionsCount6 = _getPlantTransactionsCount6(plant);
            int transactionsCount7 = _getPlantTransactionsCount7(plant);
            int transactionsCount8 = _getPlantTransactionsCount8(plant);
            int transactionsCount9 = _getPlantTransactionsCount9(plant);

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
                      plant,
                      style: TextStyle(color: Colors.white),
                    ))),
                InkWell(
                  onTap: () {
                    // CuPage = Page7();
                    // MainBodyContext.read<ChangePage_Bloc>()
                    //     .add(ChangePage_nodrower());
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: step01Complete
                          ? Colors.greenAccent
                          : Colors.grey.shade500,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 80,
                    width: 100,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("200"),
                          Text(
                            transactionsCount1.toString() + " transactions",
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: step02Complete
                        ? Colors.greenAccent
                        : Colors.grey.shade500,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 80,
                  width: 100,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("400"),
                        Text(
                          transactionsCount2.toString() + " transactions",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: step03Complete
                        ? Colors.greenAccent
                        : Colors.grey.shade500,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 80,
                  width: 100,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("600"),
                        Text(
                          transactionsCount3.toString() + " transactions",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: step04Complete
                        ? Colors.greenAccent
                        : Colors.grey.shade500,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 80,
                  width: 100,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("800"),
                        Text(
                          transactionsCount4.toString() + " transactions",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: step05Complete
                        ? Colors.greenAccent
                        : Colors.grey.shade500,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 80,
                  width: 100,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("1000"),
                        Text(
                          transactionsCount5.toString() + " transactions",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: step06Complete
                        ? Colors.greenAccent
                        : Colors.grey.shade500,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 80,
                  width: 100,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("1200"),
                        Text(
                          transactionsCount6.toString() + " transactions",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: step07Complete
                        ? Colors.greenAccent
                        : Colors.grey.shade500,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 80,
                  width: 100,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("1400"),
                        Text(
                          transactionsCount7.toString() + " transactions",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: step08Complete
                        ? Colors.greenAccent
                        : Colors.grey.shade500,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 80,
                  width: 100,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("1600"),
                        Text(
                          transactionsCount8.toString() + " transactions",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: step09Complete
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
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("1800"),
                        Text(
                          transactionsCount9.toString() + " transactions",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }).toList()
        ],
      ),
    );
  }

  int _getPlantTransactionsCount1(String plant) {
    return widget.data
            ?.where((item) => item.PLANT == plant && item.STEP01 == 'YES')
            .length ??
        0;
  }

  int _getPlantTransactionsCount2(String plant) {
    return widget.data
            ?.where((item) => item.PLANT == plant && item.STEP02 == 'YES')
            .length ??
        0;
  }

  int _getPlantTransactionsCount3(String plant) {
    return widget.data
            ?.where((item) => item.PLANT == plant && item.STEP03 == 'YES')
            .length ??
        0;
  }

  int _getPlantTransactionsCount4(String plant) {
    return widget.data
            ?.where((item) => item.PLANT == plant && item.STEP04 == 'YES')
            .length ??
        0;
  }

  int _getPlantTransactionsCount5(String plant) {
    return widget.data
            ?.where((item) => item.PLANT == plant && item.STEP05 == 'YES')
            .length ??
        0;
  }

  int _getPlantTransactionsCount6(String plant) {
    return widget.data
            ?.where((item) => item.PLANT == plant && item.STEP06 == 'YES')
            .length ??
        0;
  }

  int _getPlantTransactionsCount7(String plant) {
    return widget.data
            ?.where((item) => item.PLANT == plant && item.STEP07 == 'YES')
            .length ??
        0;
  }

  int _getPlantTransactionsCount8(String plant) {
    return widget.data
            ?.where((item) => item.PLANT == plant && item.STEP08 == 'YES')
            .length ??
        0;
  }

  int _getPlantTransactionsCount9(String plant) {
    return widget.data
            ?.where((item) => item.PLANT == plant && item.STEP09 == 'YES')
            .length ??
        0;
  }
}
