// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../bloc/cubit/NotificationEvent.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return HistoryBody();
  }
}

class HistoryBody extends StatefulWidget {
  const HistoryBody({super.key});

  @override
  State<HistoryBody> createState() => _HistoryBodyState();
}

class _HistoryBodyState extends State<HistoryBody> {
  List<List<String>> tableData = [
    ['1650574', '2024-07-01', 'Material A', 'Action 1'],
    ['1620342', '2024-07-02', 'Material B', 'Action 2'],
    ['1650580', '2024-07-03', 'Material C', 'Action 3'],
    ['1650549', '2024-07-04', 'Material D', 'Action 4'],
  ];

  // int columns = 0;
  // int rows = 0;

  // List<List<String>> tableData = [
  //   ['', 'ABC'],
  //   ['', ''],
  //   ['', '']
  // ];

  // void generateTable() {
  //   tableData.clear();
  //   for (int i = 0; i < rows; i++) {
  //     List<String> rowData = [];
  //     for (int j = 0; j < columns; j++) {
  //       rowData.add('');
  //     }
  //     tableData.add(rowData);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Table(
              border: TableBorder.all(),
              columnWidths: const {
                0: FixedColumnWidth(100.0),
                1: FixedColumnWidth(150.0),
                2: FixedColumnWidth(150.0),
                3: FixedColumnWidth(150.0),
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
                                    'PO.',
                                    style: TextStyle(color: Colors.white),
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
                                    'Date',
                                    style: TextStyle(color: Colors.white),
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
                                    'Mat.',
                                    style: TextStyle(color: Colors.white),
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
                              height: 25,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  border: Border.all(color: Colors.black),
                                ),
                                child: Center(
                                  child: Text(
                                    'Adjustment',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              width: 75,
                              height: 25,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    border: Border(
                                      right: BorderSide(color: Colors.black),
                                    )),
                                child: Center(
                                  child: Text(
                                    'Action',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              width: 75,
                              height: 25,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    border: Border(
                                      right: BorderSide(color: Colors.black),
                                    )),
                                child: Center(
                                  child: Text(
                                    'Edit',
                                    style: TextStyle(color: Colors.white),
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
                ...tableData.map((rowData) {
                  return TableRow(
                    children: [
                      TableCell(
                        child: SizedBox(
                          height: 50,
                          child: Center(
                            child: Text(rowData[0]),
                          ),
                        ),
                      ),
                      TableCell(
                        child: SizedBox(
                          height: 50,
                          child: Center(
                            child: Text(rowData[1]),
                          ),
                        ),
                      ),
                      TableCell(
                        child: SizedBox(
                          height: 50,
                          child: Center(
                            child: Text(rowData[2]),
                          ),
                        ),
                      ),
                      TableCell(
                        child: SizedBox(
                          height: 50,
                          child: Stack(
                            children: [
                              Positioned(
                                bottom: 0,
                                left: 0,
                                width: 75,
                                height: 50,
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border(
                                      right: BorderSide(color: Colors.black),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      rowData[3],
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                width: 75,
                                height: 50,
                                child: InkWell(
                                  onTap: () {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          title: Text(
                                              'การปรับแต่ง: ' + rowData[3]),
                                          content: Text(
                                              'แก้ไข: ' + rowData[3] + ' แล้ว'),
                                          actions: <Widget>[
                                            TextButton(
                                              child: Text('ปิด'),
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  },
                                  child: Center(
                                    child: Icon(
                                      Icons.edit,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                }).toList(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
    // return SingleChildScrollView(
    //   padding: EdgeInsets.all(16.0),
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.stretch,
    //     children: <Widget>[
    //       Row(
    //         children: <Widget>[
    //           SizedBox(
    //             height: 30,
    //             width: 100,
    //             child: TextField(
    //               decoration: InputDecoration(
    //                 labelText: 'T-Column',
    //                 border: OutlineInputBorder(),
    //               ),
    //               keyboardType: TextInputType.number,
    //               onChanged: (value) {
    //                 setState(() {
    //                   columns = int.tryParse(value) ?? 0;
    //                 });
    //               },
    //             ),
    //           ),
    //           SizedBox(width: 20),
    //           SizedBox(
    //             height: 30,
    //             width: 100,
    //             child: TextField(
    //               decoration: InputDecoration(
    //                 labelText: 'T-Row',
    //                 border: OutlineInputBorder(),
    //               ),
    //               keyboardType: TextInputType.number,
    //               onChanged: (value) {
    //                 setState(() {
    //                   rows = int.tryParse(value) ?? 0;
    //                 });
    //               },
    //             ),
    //           ),
    //           SizedBox(width: 20),
    //           ElevatedButton(
    //             onPressed: () {
    //               if (columns >= 1 && rows >= 1) {
    //                 setState(() {
    //                   // generateTable();
    //                 });
    //               } else {
    //                 BlocProvider.of<BlocNotification>(contextGB)
    //                     .UpdateNotification(
    //                         "Notification",
    //                         "T-Column and T-Row must be > 0",
    //                         enumNotificationlist.Error);
    //               }
    //             },
    //             child: Text('Generate Table'),
    //             style: ElevatedButton.styleFrom(
    //               minimumSize: Size(50, 45),
    //               shape: RoundedRectangleBorder(
    //                 borderRadius: BorderRadius.circular(10.0),
    //               ),
    //               primary: Colors.red,
    //               onPrimary: Colors.white,
    //             ),
    //           ),
    //         ],
    //       ),
    //       SizedBox(height: 20),
    //       Table(
    //         border: TableBorder.all(
    //           color: Colors.red,
    //         ),
    //         children: tableData.asMap().entries.map((entry) {
    //           int rowIndex = entry.key;
    //           List<String> rowData = entry.value;

    //           return TableRow(
    //             children: rowData.map((cellData) {
    //               return TableCell(
    //                 child: Container(
    //                   color: rowIndex == 0
    //                       ? Colors.grey
    //                       : Colors
    //                           .transparent, // เปลี่ยนสีพื้นหลังเฉพาะคอลัมน์บนสุด
    //                   padding: EdgeInsets.all(8.0),
    //                   child: Text(cellData),
    //                 ),
    //               );
    //             }).toList(),
    //           );
    //         }).toList(),
    //       ),
    //     ],
    //   ),
    // );
    //  }
    // }

