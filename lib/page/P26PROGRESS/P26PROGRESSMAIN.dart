// ignore_for_file: prefer_const_constructors, must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/BlocEvent/26-26-P26PROGRESSGETDATA.dart';
import '../../bloc/BlocEvent/ChangePageEvent.dart';
import '../../data/global.dart';
import '../../mainBody.dart';
import '../page19.dart';
import '../page20.dart';
import '../page21.dart';
import '../page22.dart';
import '../page23.dart';
import '../page24.dart';
import '../page25.dart';
import 'P26PROGRESSVAR.dart';

late BuildContext P26PROGRESSMAINcontext;

class P26PROGRESSMAIN extends StatefulWidget {
  P26PROGRESSMAIN({
    super.key,
    this.data,
  });
  List<P26PROGRESSGETDATAclass>? data;

  @override
  State<P26PROGRESSMAIN> createState() => _P26PROGRESSMAINState();
}

class _P26PROGRESSMAINState extends State<P26PROGRESSMAIN> {
  @override
  void initState() {
    super.initState();
    context.read<P26PROGRESSGETDATA_Bloc>().add(P26PROGRESSGETDATA_GET());
  }

  @override
  Widget build(BuildContext context) {
    P26PROGRESSMAINcontext = context;
    List<P26PROGRESSGETDATAclass> _datain =
        widget.data?.reversed.toList() ?? [];
    // List<P26PROGRESSGETDATAclass> _datain = _datainp.toSet().toList();
    final ids = Set();
    _datain.retainWhere((x) =>
        ids.add(x.CHEMICALNAME) |
        ids.add(x.BARCODE) |
        ids.add(x.SP) |
        ids.add(x.ACTUAL));

    List<P26PROGRESSGETDATAclass> filteredData = _datain.where((item) {
      switch (P26PROGRESSVAR.selectedColumn) {
        case 'CHEMICAL':
          return item.CHEMICALNAME
              .toLowerCase()
              .contains(P26PROGRESSVAR.searchQuery.toLowerCase());
        case 'BARCODE':
          return item.BARCODE
              .toLowerCase()
              .contains(P26PROGRESSVAR.searchQuery.toLowerCase());
        case 'SP.(kg)':
          return item.SP
              .toLowerCase()
              .contains(P26PROGRESSVAR.searchQuery.toLowerCase());
        case 'ACTUAL(kg)':
          return item.ACTUAL
              .toLowerCase()
              .contains(P26PROGRESSVAR.searchQuery.toLowerCase());
        default:
          return false;
      }
    }).toList();
    double totalActual =
        filteredData.fold(0.0, (sum, item) => sum + double.parse(item.ACTUAL));
    double totalSP =
        filteredData.fold(0.0, (sum, item) => sum + double.parse(item.SP));

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 10,
            left: 10,
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios_new_rounded, size: 30),
              onPressed: () {
                if (USERDATA.PLANTNAME == 'PREMIX') {
                  CuPage = Page19();
                  MainBodyContext.read<ChangePage_Bloc>()
                      .add(ChangePage_nodrower());
                } else if (USERDATA.PLANTNAME == 'COILCOATING') {
                  CuPage = Page20();
                  MainBodyContext.read<ChangePage_Bloc>()
                      .add(ChangePage_nodrower());
                } else if (USERDATA.PLANTNAME == 'HYDROPHILIC') {
                  CuPage = Page21();
                  MainBodyContext.read<ChangePage_Bloc>()
                      .add(ChangePage_nodrower());
                } else if (USERDATA.PLANTNAME == 'PL-X') {
                  CuPage = Page22();
                  MainBodyContext.read<ChangePage_Bloc>()
                      .add(ChangePage_nodrower());
                } else if (USERDATA.PLANTNAME == 'POWDER') {
                  CuPage = Page23();
                  MainBodyContext.read<ChangePage_Bloc>()
                      .add(ChangePage_nodrower());
                } else if (USERDATA.PLANTNAME == 'LIQUID') {
                  CuPage = Page24();
                  MainBodyContext.read<ChangePage_Bloc>()
                      .add(ChangePage_nodrower());
                } else if (USERDATA.PLANTNAME == 'NOXRUST') {
                  CuPage = Page25();
                  MainBodyContext.read<ChangePage_Bloc>()
                      .add(ChangePage_nodrower());
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Center(
                  child: ShaderMask(
                    shaderCallback: (bounds) => LinearGradient(
                      colors: const [Colors.blueAccent, Colors.lightBlueAccent],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ).createShader(bounds),
                    child: Text(
                      '${USERDATA.PLANTNAME} : ${USERDATA.TANK} : ${USERDATA.ORDER}',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(
                                width: 150,
                                height: 50,
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    value: P26PROGRESSVAR.selectedColumn,
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        P26PROGRESSVAR.selectedColumn =
                                            newValue!;
                                      });
                                    },
                                    items: <String>[
                                      'CHEMICAL',
                                      'BARCODE',
                                      'SP.(kg)',
                                      'ACTUAL(kg)',
                                    ].map<DropdownMenuItem<String>>(
                                        (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Row(
                                          children: [
                                            Icon(Icons.data_usage_rounded,
                                                color: Colors.blue),
                                            SizedBox(width: 10),
                                            Text(value),
                                          ],
                                        ),
                                      );
                                    }).toList(),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              SizedBox(
                                width: 200,
                                height: 50,
                                child: TextField(
                                  onChanged: (value) {
                                    setState(() {
                                      P26PROGRESSVAR.searchQuery = value;
                                    });
                                  },
                                  decoration: InputDecoration(
                                    hintText: 'Search...',
                                    prefixIcon: Icon(Icons.search),
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              SizedBox(
                                child: Column(
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        context
                                            .read<P26PROGRESSGETDATA_Bloc>()
                                            .add(P26PROGRESSGETDATA_GET());
                                      },
                                      style: ElevatedButton.styleFrom(
                                        shape: const CircleBorder(),
                                        padding: const EdgeInsets.all(10),
                                      ),
                                      child: const Icon(
                                        Icons.refresh_rounded,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Refresh',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Table(
                            border: TableBorder.all(),
                            columnWidths: const {
                              0: FixedColumnWidth(50.0),
                              1: FixedColumnWidth(300),
                              2: FixedColumnWidth(100.0),
                              3: FixedColumnWidth(100.0),
                              4: FixedColumnWidth(100.0),
                            },
                            children: [
                              TableRow(
                                children: [
                                  TableCell(
                                    child: SizedBox(
                                      height: 50,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            top: 0,
                                            left: 0,
                                            right: 0,
                                            height: 50,
                                            child: Container(
                                              color: Colors.blue,
                                              child: Center(
                                                child: Text(
                                                  'NO.',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    child: SizedBox(
                                      height: 50,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            top: 0,
                                            left: 0,
                                            right: 0,
                                            height: 50,
                                            child: Container(
                                              color: Colors.blue,
                                              child: Center(
                                                child: Text(
                                                  'CHEMICAL',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    child: SizedBox(
                                      height: 50,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            top: 0,
                                            left: 0,
                                            right: 0,
                                            height: 50,
                                            child: Container(
                                              color: Colors.blue,
                                              child: Center(
                                                child: Text(
                                                  'BARCODE',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    child: SizedBox(
                                      height: 50,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            top: 0,
                                            left: 0,
                                            right: 0,
                                            height: 50,
                                            child: Container(
                                              color: Colors.blue,
                                              child: Center(
                                                child: Text(
                                                  'SP. (kg)',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    child: SizedBox(
                                      height: 50,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            top: 0,
                                            left: 0,
                                            right: 0,
                                            height: 50,
                                            child: Container(
                                              color: Colors.blue,
                                              child: Center(
                                                child: Text(
                                                  'ACTUAL (kg)',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              ...filteredData.map((item) {
                                int dataCount = filteredData.indexOf(item) + 1;
                                return TableRow(
                                  children: [
                                    TableCell(
                                      child: SizedBox(
                                        height: 30,
                                        child: Center(
                                          child: Text(dataCount.toString()),
                                        ),
                                      ),
                                    ),
                                    TableCell(
                                      child: SizedBox(
                                        height: 30,
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text('  ${item.CHEMICALNAME}'),
                                        ),
                                      ),
                                    ),
                                    TableCell(
                                      child: SizedBox(
                                        height: 30,
                                        child:
                                            Center(child: Text(item.BARCODE)),
                                      ),
                                    ),
                                    TableCell(
                                      child: SizedBox(
                                        height: 30,
                                        child: Center(
                                          child: Text(item.SP),
                                        ),
                                      ),
                                    ),
                                    TableCell(
                                      child: SizedBox(
                                        height: 30,
                                        child: Center(
                                          child: Text(item.ACTUAL),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              }),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                height: 30,
                                width: 349.5,
                              ),
                              Container(
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.yellow.shade100,
                                  border: Border(
                                    left: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    bottom: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'TOTAL',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Container(
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.yellow.shade100,
                                  border: Border(
                                    left: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    bottom: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    totalSP.toStringAsFixed(1),
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 30,
                                width: 100.5,
                                decoration: BoxDecoration(
                                  color: Colors.yellow.shade100,
                                  border: Border(
                                    left: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    right: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    bottom: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    totalActual.toStringAsFixed(1),
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
