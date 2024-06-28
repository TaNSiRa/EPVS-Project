import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/cubit/NotificationEvent.dart';

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
  int columns = 0;
  int rows = 0;

  List<List<String>> tableData = [];

  void generateTable() {
    tableData.clear();
    for (int i = 0; i < rows; i++) {
      List<String> rowData = [];
      for (int j = 0; j < columns; j++) {
        rowData.add('');
      }
      tableData.add(rowData);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            children: <Widget>[
              SizedBox(
                height: 30,
                width: 100,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'T-Column',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    setState(() {
                      columns = int.tryParse(value) ?? 0;
                    });
                  },
                ),
              ),
              SizedBox(width: 20),
              SizedBox(
                height: 30,
                width: 100,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'T-Row',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    setState(() {
                      rows = int.tryParse(value) ?? 0;
                    });
                  },
                ),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  if (columns >= 1 && rows >= 1) {
                    setState(() {
                      generateTable();
                    });
                  } else {
                    BlocProvider.of<BlocNotification>(contextGB)
                        .UpdateNotification(
                            "Notification",
                            "T-Column and T-Row must be > 0",
                            enumNotificationlist.Error);
                  }
                },
                child: Text('Generate Table'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(50, 45),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  primary: Colors.red,
                  onPrimary: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          if (tableData.isNotEmpty)
            Table(
              border: TableBorder.all(),
              children: tableData.map((rowData) {
                return TableRow(
                  children: rowData.map((cellData) {
                    return TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(cellData),
                      ),
                    );
                  }).toList(),
                );
              }).toList(),
            ),
        ],
      ),
    );
  }
}
