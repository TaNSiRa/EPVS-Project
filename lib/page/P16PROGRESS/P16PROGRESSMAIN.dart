import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newmaster/page/page10.dart';
import '../../bloc/BlocEvent/16-16-P16PROGRESSGETDATA.dart';
import '../../bloc/BlocEvent/ChangePageEvent.dart';
import '../../data/global.dart';
import '../../mainBody.dart';
import '../P1PROGRESS/P01PROGRESSVAR.dart';
import '../page1.dart';
import '../page12.dart';
import '../page14.dart';
import '../page15.dart';
import '../page7.dart';

class P16PROGRESSMAIN extends StatefulWidget {
  P16PROGRESSMAIN({
    super.key,
    this.data,
  });
  List<P16PROGRESSGETDATAclass>? data;

  @override
  State<P16PROGRESSMAIN> createState() => _P16PROGRESSMAINState();
}

class _P16PROGRESSMAINState extends State<P16PROGRESSMAIN> {
  String selectedColumn = 'CUST NAME';
  String searchQuery = '';

  @override
  void initState() {
    super.initState();
    context.read<P16PROGRESSGETDATA_Bloc>().add(P16PROGRESSGETDATA_GET());
  }

  @override
  Widget build(BuildContext context) {
    List<P16PROGRESSGETDATAclass> _datain = widget.data ?? [];
    List<P16PROGRESSGETDATAclass> filteredData = _datain.where((item) {
      switch (selectedColumn) {
        case 'CUST NAME':
          return item.CUST_FULL
              .toLowerCase()
              .contains(searchQuery.toLowerCase());
        case 'PART NAME':
          return item.PARTNAME
              .toLowerCase()
              .contains(searchQuery.toLowerCase());
        case 'PART NO.':
          return item.PARTNO.toLowerCase().contains(searchQuery.toLowerCase());
        case 'QTY':
          return item.QTY.toLowerCase().contains(searchQuery.toLowerCase());
        case 'TPK LOT':
          return item.TPKLOT.toLowerCase().contains(searchQuery.toLowerCase());
        default:
          return false;
      }
    }).toList();

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 10,
            left: 10,
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios_new_rounded, size: 30),
              onPressed: () {
                if (USERDATA.BRANCH == 'BP12') {
                  CuPage = Page12();
                  MainBodyContext.read<ChangePage_Bloc>()
                      .add(ChangePage_nodrower());
                } else if (USERDATA.BRANCH == 'GW') {
                  CuPage = Page14();
                  MainBodyContext.read<ChangePage_Bloc>()
                      .add(ChangePage_nodrower());
                } else if (USERDATA.BRANCH == 'ESIE1') {
                  CuPage = Page15();
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
                      colors: [Colors.blueAccent, Colors.lightBlueAccent],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ).createShader(bounds),
                    child: Text(
                      USERDATA.BRANCH +
                          ' : ' +
                          USERDATA.ACTION +
                          ' : ' +
                          USERDATA.PLANT,
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
                                    value: selectedColumn,
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        selectedColumn = newValue!;
                                      });
                                    },
                                    items: <String>[
                                      'CUST NAME',
                                      'PART NAME',
                                      'PART NO.',
                                      'TPK LOT',
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
                                )),
                            SizedBox(width: 10),
                            SizedBox(
                              width: 200,
                              height: 50,
                              child: TextField(
                                onChanged: (value) {
                                  setState(() {
                                    searchQuery = value;
                                  });
                                },
                                decoration: InputDecoration(
                                  hintText: 'Search...',
                                  prefixIcon: Icon(Icons.search),
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Table(
                          border: TableBorder.all(),
                          columnWidths: const {
                            0: FixedColumnWidth(50.0),
                            1: FixedColumnWidth(300.0),
                            2: FixedColumnWidth(200.0),
                            3: FixedColumnWidth(160.0),
                            4: FixedColumnWidth(80.0),
                            5: FixedColumnWidth(100.0),
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
                                                'ID',
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
                                                'CUST NAME',
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
                                                'PART NAME',
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
                                                'PART NO.',
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
                                                'QTY',
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
                                                'TPK LOT',
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
                                        child: Text('  ' + item.CUST_FULL),
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    child: SizedBox(
                                      height: 30,
                                      child: Center(
                                        child: Text(item.PARTNAME),
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    child: SizedBox(
                                      height: 30,
                                      child: Center(
                                        child: Text(item.PARTNO),
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    child: SizedBox(
                                      height: 30,
                                      child: Center(
                                        child: Text(item.QTY),
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    child: SizedBox(
                                      height: 30,
                                      child: Center(
                                        child: Text(item.TPKLOT),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            }).toList(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
