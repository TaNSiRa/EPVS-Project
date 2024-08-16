// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newmaster/data/global.dart';
import 'package:newmaster/page/page12.dart';
import 'package:newmaster/page/page16.dart';

import '../../bloc/BlocEvent/ChangePageEvent.dart';
import '../../mainBody.dart';
import '../page1.dart';
import '../page14.dart';
import '../page15.dart';
import '../page2.dart';
import '../page3.dart';
import '../page4.dart';
import '../page9.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../bloc/cubit/NotificationEvent.dart';

class P10PROGRESSMAIN extends StatefulWidget {
  const P10PROGRESSMAIN({super.key});

  @override
  State<P10PROGRESSMAIN> createState() => _P10PROGRESSMAINState();
}

class _P10PROGRESSMAINState extends State<P10PROGRESSMAIN> {
  @override
  Widget build(BuildContext context) {
    return P10PROGRESSMAINBody();
  }
}

class P10PROGRESSMAINBody extends StatefulWidget {
  const P10PROGRESSMAINBody({super.key});

  @override
  State<P10PROGRESSMAINBody> createState() => _P10PROGRESSMAINBodyState();
}

class _P10PROGRESSMAINBodyState extends State<P10PROGRESSMAINBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 10,
            left: 10,
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios_new_rounded, size: 30),
              onPressed: () {
                CuPage = Page9();
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
                      USERDATA.BRANCH + ' : SELECT ACTION',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: InkWell(
                            onTap: () {
                              USERDATA.ACTION = 'INCOMING';
                              print(USERDATA.ACTION);
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
                            child: Container(
                              height: 50,
                              width: 400,
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
                                  'INCOMING',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: InkWell(
                            onTap: () {
                              USERDATA.ACTION = 'PLANNING';
                              print(USERDATA.ACTION);
                              // print(USERDATA.BRANCH);
                              // if (USERDATA.BRANCH == 'BP12') {
                              //   CuPage = Page2();
                              //   MainBodyContext.read<ChangePage_Bloc>()
                              //       .add(ChangePage_nodrower());
                              // }
                            },
                            child: Container(
                              height: 50,
                              width: 400,
                              decoration: BoxDecoration(
                                color: Colors.red.shade900,
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  'PLANNING',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: InkWell(
                            onTap: () {
                              print(USERDATA.BRANCH);
                              USERDATA.ACTION = 'STATUS';
                              print(USERDATA.ACTION);
                              if (USERDATA.BRANCH == 'BP12') {
                                CuPage = Page2();
                                MainBodyContext.read<ChangePage_Bloc>()
                                    .add(ChangePage_nodrower());
                              } else if (USERDATA.BRANCH == 'GW') {
                                CuPage = Page4();
                                MainBodyContext.read<ChangePage_Bloc>()
                                    .add(ChangePage_nodrower());
                              } else if (USERDATA.BRANCH == 'ESIE1') {
                                CuPage = Page1();
                                MainBodyContext.read<ChangePage_Bloc>()
                                    .add(ChangePage_nodrower());
                              }
                            },
                            child: Container(
                              height: 50,
                              width: 400,
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
                                  'STATUS',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                            ),
                          ),
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.all(5.0),
                        //   child: InkWell(
                        //     onTap: () {
                        //       USERDATA.ACTION = 'AQC';
                        //       print(USERDATA.ACTION);
                        //       if (USERDATA.BRANCH == 'BP12') {
                        //         CuPage = Page12();
                        //         MainBodyContext.read<ChangePage_Bloc>()
                        //             .add(ChangePage_nodrower());
                        //       } else if (USERDATA.BRANCH == 'GW') {
                        //         CuPage = Page14();
                        //         MainBodyContext.read<ChangePage_Bloc>()
                        //             .add(ChangePage_nodrower());
                        //       } else if (USERDATA.BRANCH == 'ESIE1') {
                        //         CuPage = Page15();
                        //         MainBodyContext.read<ChangePage_Bloc>()
                        //             .add(ChangePage_nodrower());
                        //       }
                        //     },
                        //     child: Container(
                        //       height: 50,
                        //       width: 400,
                        //       decoration: BoxDecoration(
                        //         color: Colors.green,
                        //         border: Border.all(
                        //           color: Colors.black,
                        //           width: 2.0,
                        //         ),
                        //         borderRadius: BorderRadius.circular(10),
                        //       ),
                        //       child: Center(
                        //         child: Text(
                        //           'AQC',
                        //           style: TextStyle(
                        //               color: Colors.white, fontSize: 20),
                        //         ),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
