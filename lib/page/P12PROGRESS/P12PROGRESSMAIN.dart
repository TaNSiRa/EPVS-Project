// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newmaster/data/global.dart';
import 'package:newmaster/page/page10.dart';
import 'package:newmaster/page/page13.dart';
import 'package:newmaster/page/page16.dart';
import 'package:newmaster/page/page8.dart';

import '../../bloc/BlocEvent/ChangePageEvent.dart';
import '../../mainBody.dart';
import '../page1.dart';
import '../page2.dart';
import '../page3.dart';
import '../page4.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../bloc/cubit/NotificationEvent.dart';

class P12PROGRESSMAIN extends StatefulWidget {
  const P12PROGRESSMAIN({super.key});

  @override
  State<P12PROGRESSMAIN> createState() => _P12PROGRESSMAINState();
}

class _P12PROGRESSMAINState extends State<P12PROGRESSMAIN> {
  @override
  Widget build(BuildContext context) {
    return P12PROGRESSMAINBody();
  }
}

class P12PROGRESSMAINBody extends StatefulWidget {
  const P12PROGRESSMAINBody({super.key});

  @override
  State<P12PROGRESSMAINBody> createState() => _P12PROGRESSMAINBodyState();
}

class _P12PROGRESSMAINBodyState extends State<P12PROGRESSMAINBody> {
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
                          USERDATA.PLANTNUMBER = '24000';
                          USERDATA.PLANT = 'GAS';
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
                              'GAS',
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
                          USERDATA.PLANTNUMBER = '21000';
                          USERDATA.PLANT = 'PHO';
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
                              'PHO',
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
                          USERDATA.PLANTNUMBER = '22000';
                          USERDATA.PLANT = 'PAL';
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
                              'PAL',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Wrap(
                  spacing: 10.0,
                  runSpacing: 10.0,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: InkWell(
                        onTap: () {
                          USERDATA.PLANTNUMBER = '61000';
                          USERDATA.PLANT = 'KNG';
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
                              'KNG',
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
                          USERDATA.PLANTNUMBER = '62000';
                          USERDATA.PLANT = 'PVD';
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
                              'PVD',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.all(10.0),
                    //   child: InkWell(
                    //     onTap: () {
                    //       // USERDATA.INSMASTER = '';
                    //       // print(USERDATA.INSMASTER);
                    //       // // CuPage = Page3();
                    //       // // MainBodyContext.read<ChangePage_Bloc>()
                    //       // //     .add(ChangePage_nodrower());
                    //     },
                    //     child: Container(
                    //       height: 150,
                    //       width: 150,
                    //       decoration: BoxDecoration(
                    //         color: Colors.red.shade900,
                    //         border: Border.all(
                    //           color: Colors.black,
                    //           width: 2.0,
                    //         ),
                    //         borderRadius: BorderRadius.circular(10),
                    //       ),
                    //       child: Center(
                    //         child: Text(
                    //           'Others',
                    //           style:
                    //               TextStyle(color: Colors.white, fontSize: 20),
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
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
