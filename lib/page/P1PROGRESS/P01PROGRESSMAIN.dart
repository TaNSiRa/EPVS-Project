import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/BlocEvent/01-01-P01PROGRESSGETDATA.dart';
import '../../bloc/BlocEvent/07-07-P07PROGRESSGETDATA.dart';
import '../../bloc/BlocEvent/ChangePageEvent.dart';
import '../../data/global.dart';
import '../../mainBody.dart';
import '../page7.dart';

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
    super.initState();
    context.read<P01PROGRESSGETDATA_Bloc>().add(P01PROGRESSGETDATA_GET());
  }

  @override
  Widget build(BuildContext context) {
    List<P01PROGRESSGETDATAclass> _datain = widget.data ?? [];
    // print(_datain);
    // Group data by PLANT
    Map<String, List<P01PROGRESSGETDATAclass>> groupedData = {};
    for (var item in _datain) {
      if (groupedData.containsKey(item.PLANT)) {
        groupedData[item.PLANT]!.add(item);
        // print(groupedData.containsKey(item.PLANT)); //ข้อมูลซ้ำกันขึ้น true
      } else {
        groupedData[item.PLANT] = [item];
        // print(groupedData[item.PLANT] = [item]); //ข้อมูลไม่มีซ้ำกัน
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
                  'HES : PROGRESS',
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
          ...groupedData.entries.map((_data) {
            // print(groupedData);
            String plant = _data.key;
            // print(_data.key); //.key คือชื่อ plant (PHO,GAS,ISONITE,DELTA)
            List<P01PROGRESSGETDATAclass> steps = _data.value;
            // print(_data.value); //.value คือ Arrey
            bool step01Complete = steps.any((step) => step.STEP01 == 'YES');
            bool step02Complete = steps.any((step) => step.STEP02 == 'YES');
            bool step03Complete = steps.any((step) => step.STEP03 == 'YES');
            bool step04Complete = steps.any((step) => step.STEP04 == 'YES');
            bool step05Complete = steps.any((step) => step.STEP05 == 'YES');
            bool step06Complete = steps.any((step) => step.STEP06 == 'YES');
            bool step07Complete = steps.any((step) => step.STEP07 == 'YES');
            bool step08Complete = steps.any((step) => step.STEP08 == 'YES');
            bool step09Complete = steps.any((step) => step.STEP09 == 'YES');
            // print(step01Complete); //ถ้า YES จะเป็น true
            int transactionsCount1 = _getPlantTransactionsCount(plant, 1);
            int transactionsCount2 = _getPlantTransactionsCount(plant, 2);
            int transactionsCount3 = _getPlantTransactionsCount(plant, 3);
            int transactionsCount4 = _getPlantTransactionsCount(plant, 4);
            int transactionsCount5 = _getPlantTransactionsCount(plant, 5);
            int transactionsCount6 = _getPlantTransactionsCount(plant, 6);
            int transactionsCount7 = _getPlantTransactionsCount(plant, 7);
            int transactionsCount8 = _getPlantTransactionsCount(plant, 8);
            int transactionsCount9 = _getPlantTransactionsCount(plant, 9);
            print(transactionsCount1);
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
                AbsorbPointer(
                  absorbing: !step01Complete, // ถ้าไม่ครบจะทำให้ไม่สามารถกดได้
                  child: InkWell(
                    onTap: () {
                      print(_data.value[0].PLANT);
                      print(_data.value[0].STEP01);
                      print(_data.value[0].STEP02);
                      if (step01Complete) {
                        String sendLocation = _data.value[0].LOCATION;
                        String sendPlant = _data.value[0].PLANT;
                        String sendStep1 = _data.value[0].STEP01;
                        context.read<P07PROGRESSGETDATA_Bloc>().add(
                              P07PROGRESSGETDATA_GET(
                                location: sendLocation,
                                plant: sendPlant,
                                step1: sendStep1,
                              ),
                            );
                        CuPage = Page7();
                        MainBodyContext.read<ChangePage_Bloc>()
                            .add(ChangePage_nodrower());
                      }
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

  int _getPlantTransactionsCount(String plant, int step) {
    return widget.data?.where((item) {
          switch (step) {
            case 1:
              return item.PLANT == plant && item.STEP01 == 'YES';
            case 2:
              return item.PLANT == plant && item.STEP02 == 'YES';
            case 3:
              return item.PLANT == plant && item.STEP03 == 'YES';
            case 4:
              return item.PLANT == plant && item.STEP04 == 'YES';
            case 5:
              return item.PLANT == plant && item.STEP05 == 'YES';
            case 6:
              return item.PLANT == plant && item.STEP06 == 'YES';
            case 7:
              return item.PLANT == plant && item.STEP07 == 'YES';
            case 8:
              return item.PLANT == plant && item.STEP08 == 'YES';
            case 9:
              return item.PLANT == plant && item.STEP09 == 'YES';
            default:
              return false;
          }
        }).length ??
        0;
  }
}
