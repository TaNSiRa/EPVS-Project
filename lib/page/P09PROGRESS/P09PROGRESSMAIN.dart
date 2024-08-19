// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newmaster/data/global.dart';
import 'package:newmaster/page/page10.dart';
import 'package:newmaster/page/page8.dart';

import '../../bloc/BlocEvent/ChangePageEvent.dart';
import '../../mainBody.dart';
import '../page1.dart';
import '../page2.dart';
import '../page3.dart';
import '../page4.dart';
import 'P09PROGRESSVAR.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../bloc/cubit/NotificationEvent.dart';

class P09PROGRESSMAIN extends StatefulWidget {
  const P09PROGRESSMAIN({super.key});

  @override
  State<P09PROGRESSMAIN> createState() => _P09PROGRESSMAINState();
}

class _P09PROGRESSMAINState extends State<P09PROGRESSMAIN> {
  @override
  Widget build(BuildContext context) {
    return P09PROGRESSMAINBody();
  }
}

class P09PROGRESSMAINBody extends StatefulWidget {
  const P09PROGRESSMAINBody({super.key});

  @override
  State<P09PROGRESSMAINBody> createState() => _P09PROGRESSMAINBodyState();
}

class _P09PROGRESSMAINBodyState extends State<P09PROGRESSMAINBody> {
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
                CuPage = Page8();
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
                      USERDATA.INSMASTER + ' : SELECT BRANCH',
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
                        Wrap(
                          spacing: 10.0,
                          runSpacing: 10.0,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: MouseRegion(
                                onEnter: (_) {
                                  setState(() {
                                    P09PROGRESSVAR.isHoveredBP12 = true;
                                  });
                                },
                                onExit: (_) {
                                  setState(() {
                                    P09PROGRESSVAR.isHoveredBP12 = false;
                                  });
                                },
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      P09PROGRESSVAR.isHoveredBP12 = false;
                                    });
                                    USERDATA.BRANCH = 'BP12';
                                    USERDATA.BRANCHNUMBER = BRANCHNUMBER.BP;
                                    print(USERDATA.BRANCH);
                                    print(USERDATA.BRANCHNUMBER);
                                    CuPage = Page10();
                                    MainBodyContext.read<ChangePage_Bloc>()
                                        .add(ChangePage_nodrower());
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 300),
                                    height: P09PROGRESSVAR.isHoveredBP12
                                        ? 170
                                        : 150,
                                    width: P09PROGRESSVAR.isHoveredBP12
                                        ? 170
                                        : 150,
                                    decoration: BoxDecoration(
                                      color: P09PROGRESSVAR.isHoveredBP12
                                          ? Colors.greenAccent
                                          : Colors.green,
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'BP12',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: MouseRegion(
                                onEnter: (_) {
                                  setState(() {
                                    P09PROGRESSVAR.isHoveredGW = true;
                                  });
                                },
                                onExit: (_) {
                                  setState(() {
                                    P09PROGRESSVAR.isHoveredGW = false;
                                  });
                                },
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      P09PROGRESSVAR.isHoveredGW = false;
                                    });
                                    USERDATA.BRANCH = 'GW';
                                    USERDATA.BRANCHNUMBER = BRANCHNUMBER.GW;
                                    print(USERDATA.BRANCH);
                                    print(USERDATA.BRANCHNUMBER);
                                    CuPage = Page10();
                                    MainBodyContext.read<ChangePage_Bloc>()
                                        .add(ChangePage_nodrower());
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 300),
                                    height:
                                        P09PROGRESSVAR.isHoveredGW ? 170 : 150,
                                    width:
                                        P09PROGRESSVAR.isHoveredGW ? 170 : 150,
                                    decoration: BoxDecoration(
                                      color: P09PROGRESSVAR.isHoveredGW
                                          ? Colors.greenAccent
                                          : Colors.green,
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'GW',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: MouseRegion(
                                onEnter: (_) {
                                  setState(() {
                                    P09PROGRESSVAR.isHoveredESIE1 = true;
                                  });
                                },
                                onExit: (_) {
                                  setState(() {
                                    P09PROGRESSVAR.isHoveredESIE1 = false;
                                  });
                                },
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      P09PROGRESSVAR.isHoveredESIE1 = false;
                                    });
                                    USERDATA.BRANCH = 'ESIE1';
                                    USERDATA.BRANCHNUMBER = BRANCHNUMBER.ESIE1;
                                    print(USERDATA.BRANCH);
                                    print(USERDATA.BRANCHNUMBER);
                                    CuPage = Page10();
                                    MainBodyContext.read<ChangePage_Bloc>()
                                        .add(ChangePage_nodrower());
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 300),
                                    height: P09PROGRESSVAR.isHoveredESIE1
                                        ? 170
                                        : 150,
                                    width: P09PROGRESSVAR.isHoveredESIE1
                                        ? 170
                                        : 150,
                                    decoration: BoxDecoration(
                                      color: P09PROGRESSVAR.isHoveredESIE1
                                          ? Colors.greenAccent
                                          : Colors.green,
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'ESIE1',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
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
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
