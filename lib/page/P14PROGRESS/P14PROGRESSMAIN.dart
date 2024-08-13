// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newmaster/data/global.dart';
import 'package:newmaster/page/page10.dart';
import 'package:newmaster/page/page13.dart';
import 'package:newmaster/page/page8.dart';

import '../../bloc/BlocEvent/ChangePageEvent.dart';
import '../../mainBody.dart';
import '../page1.dart';
import '../page16.dart';
import '../page2.dart';
import '../page3.dart';
import '../page4.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../bloc/cubit/NotificationEvent.dart';

class P14PROGRESSMAIN extends StatefulWidget {
  const P14PROGRESSMAIN({super.key});

  @override
  State<P14PROGRESSMAIN> createState() => _P14PROGRESSMAINState();
}

class _P14PROGRESSMAINState extends State<P14PROGRESSMAIN> {
  @override
  Widget build(BuildContext context) {
    return P14PROGRESSMAINBody();
  }
}

class P14PROGRESSMAINBody extends StatefulWidget {
  const P14PROGRESSMAINBody({super.key});

  @override
  State<P14PROGRESSMAINBody> createState() => _P14PROGRESSMAINBodyState();
}

class _P14PROGRESSMAINBodyState extends State<P14PROGRESSMAINBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 10,
            left: 10,
            child: IconButton(
              icon: Icon(Icons.arrow_back, size: 30),
              onPressed: () {
                CuPage = Page10();
                MainBodyContext.read<ChangePage_Bloc>()
                    .add(ChangePage_nodrower());
              },
            ),
          ),
          Column(
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
                      USERDATA.BRANCH +
                          ' : ' +
                          USERDATA.ACTION +
                          ' : SELECT PLANT',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Wrap(
                  spacing: 10.0,
                  runSpacing: 10.0,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: InkWell(
                        onTap: () {
                          USERDATA.PLANTNUMBER = '25000';
                          USERDATA.PLANT = 'GW OLD';
                          print(USERDATA.PLANTNUMBER);
                          print(USERDATA.PLANT);
                          if (USERDATA.ACTION == 'INCOMING') {
                            CuPage = Page13();
                            MainBodyContext.read<ChangePage_Bloc>()
                                .add(ChangePage_nodrower());
                          } else if (USERDATA.ACTION == 'AQC') {
                            CuPage = Page16();
                            MainBodyContext.read<ChangePage_Bloc>()
                                .add(ChangePage_nodrower());
                          }
                        },
                        child: Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            border: Border.all(
                              color: Colors.black,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              'GW OLD',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: InkWell(
                        onTap: () {
                          USERDATA.PLANTNUMBER = '25700';
                          USERDATA.PLANT = 'GW NEW';
                          print(USERDATA.PLANTNUMBER);
                          print(USERDATA.PLANT);
                          if (USERDATA.ACTION == 'INCOMING') {
                            CuPage = Page13();
                            MainBodyContext.read<ChangePage_Bloc>()
                                .add(ChangePage_nodrower());
                          } else if (USERDATA.ACTION == 'AQC') {
                            CuPage = Page16();
                            MainBodyContext.read<ChangePage_Bloc>()
                                .add(ChangePage_nodrower());
                          }
                        },
                        child: Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            border: Border.all(
                              color: Colors.black,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              'GW NEW',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
