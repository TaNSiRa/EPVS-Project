// ignore_for_file: prefer_const_constructors, must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/BlocEvent/13-13-P13PROGRESSGETDATA.dart';
import '../../bloc/BlocEvent/ChangePageEvent.dart';
import '../../data/global.dart';
import '../../mainBody.dart';
import '../page10.dart';
import 'P13PROGRESSVAR.dart';

late BuildContext P13PROGRESSMAINcontext;

class P13PROGRESSMAIN extends StatefulWidget {
  P13PROGRESSMAIN({
    super.key,
    this.data,
  });
  List<P13PROGRESSGETDATAclass>? data;

  @override
  State<P13PROGRESSMAIN> createState() => _P13PROGRESSMAINState();
}

class _P13PROGRESSMAINState extends State<P13PROGRESSMAIN> {
  @override
  void initState() {
    super.initState();
    context.read<P13PROGRESSGETDATA_Bloc>().add(P13PROGRESSGETDATA_GET());
  }

  @override
  Widget build(BuildContext context) {
    P13PROGRESSMAINcontext = context;
    List<P13PROGRESSGETDATAclass> _datain = widget.data ?? [];
    List<P13PROGRESSGETDATAclass> filteredData = _datain.where((item) {
      switch (P13PROGRESSVAR.selectedColumn) {
        case 'MATCP':
          return item.MATCP
              .toLowerCase()
              .contains(P13PROGRESSVAR.searchQuery.toLowerCase());
        case 'CUST NAME':
          return item.CUST_FULL
              .toLowerCase()
              .contains(P13PROGRESSVAR.searchQuery.toLowerCase());
        case 'PART NAME':
          return item.PARTNAME
              .toLowerCase()
              .contains(P13PROGRESSVAR.searchQuery.toLowerCase());
        case 'PART NO':
          return item.PART_NO
              .toLowerCase()
              .contains(P13PROGRESSVAR.searchQuery.toLowerCase());
        case 'CHARG':
          return item.CHARG
              .toLowerCase()
              .contains(P13PROGRESSVAR.searchQuery.toLowerCase());
        case 'CUST LOT':
          return item.CUST_LOT
              .toLowerCase()
              .contains(P13PROGRESSVAR.searchQuery.toLowerCase());
        case 'QTY':
          return item.QTY
              .toLowerCase()
              .contains(P13PROGRESSVAR.searchQuery.toLowerCase());
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
                CuPage = Page10();
                MainBodyContext.read<ChangePage_Bloc>()
                    .add(ChangePage_nodrower());
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
                                      value: P13PROGRESSVAR.selectedColumn,
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          P13PROGRESSVAR.selectedColumn =
                                              newValue!;
                                        });
                                      },
                                      items: <String>[
                                        'MATCP',
                                        'CUST NAME',
                                        'PART NAME',
                                        'PART NO',
                                        'CHARG',
                                        'CUST LOT',
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
                                width: 150,
                                height: 50,
                                child: TextField(
                                  onChanged: (value) {
                                    setState(() {
                                      P13PROGRESSVAR.searchQuery = value;
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
                                            .read<P13PROGRESSGETDATA_Bloc>()
                                            .add(P13PROGRESSGETDATA_GET());
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
                              1: FixedColumnWidth(100.0),
                              2: FixedColumnWidth(300.0),
                              3: FixedColumnWidth(160.0),
                              4: FixedColumnWidth(160.0),
                              5: FixedColumnWidth(80.0),
                              6: FixedColumnWidth(110.0),
                              7: FixedColumnWidth(100.0),
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
                                                  'MATCP',
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
                                                  'PART NO',
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
                                                  'CHARG',
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
                                                  'CUST LOT',
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
                                        child: Center(
                                          child: Text(item.MATCP),
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
                                          child: Text(item.PART_NO),
                                        ),
                                      ),
                                    ),
                                    TableCell(
                                      child: SizedBox(
                                        height: 30,
                                        child: Center(
                                          child: Text(item.CHARG),
                                        ),
                                      ),
                                    ),
                                    TableCell(
                                      child: SizedBox(
                                        height: 30,
                                        child: Center(
                                          child: Text(item.CUST_LOT),
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
                                  ],
                                );
                              }).toList(),
                            ],
                          ),
                        ],
                      ),
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
