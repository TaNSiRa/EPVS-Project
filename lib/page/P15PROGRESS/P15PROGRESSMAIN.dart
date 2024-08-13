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

class P15PROGRESSMAIN extends StatefulWidget {
  const P15PROGRESSMAIN({super.key});

  @override
  State<P15PROGRESSMAIN> createState() => _P15PROGRESSMAINState();
}

class _P15PROGRESSMAINState extends State<P15PROGRESSMAIN> {
  @override
  Widget build(BuildContext context) {
    return P15PROGRESSMAINBody();
  }
}

class P15PROGRESSMAINBody extends StatefulWidget {
  const P15PROGRESSMAINBody({super.key});

  @override
  State<P15PROGRESSMAINBody> createState() => _P15PROGRESSMAINBodyState();
}

class _P15PROGRESSMAINBodyState extends State<P15PROGRESSMAINBody> {
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
                          USERDATA.PLANTNUMBER = '51000';
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
                          USERDATA.PLANTNUMBER = '52000';
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
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: InkWell(
                        onTap: () {
                          USERDATA.PLANTNUMBER = '53000';
                          USERDATA.PLANT = 'ISN';
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
                              'ISN',
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
                          USERDATA.PLANTNUMBER = '54000';
                          USERDATA.PLANT = 'GAS NONBOI';
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
                              'GAS NONBOI',
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
                          USERDATA.PLANTNUMBER = '54500';
                          USERDATA.PLANT = 'GAS BOI';
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
                              'GAS BOI',
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
