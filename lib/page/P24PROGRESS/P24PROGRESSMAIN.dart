// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/BlocEvent/ChangePageEvent.dart';
import '../../data/global.dart';
import '../../mainBody.dart';
import '../page13.dart';
import '../page18.dart';
import 'P24PROGRESSVAR.dart';

class P24PROGRESSMAIN extends StatefulWidget {
  const P24PROGRESSMAIN({super.key});

  @override
  State<P24PROGRESSMAIN> createState() => _P24PROGRESSMAINState();
}

class _P24PROGRESSMAINState extends State<P24PROGRESSMAIN> {
  @override
  Widget build(BuildContext context) {
    return P24PROGRESSMAINBody();
  }
}

class P24PROGRESSMAINBody extends StatefulWidget {
  const P24PROGRESSMAINBody({super.key});

  @override
  State<P24PROGRESSMAINBody> createState() => _P24PROGRESSMAINBodyState();
}

class _P24PROGRESSMAINBodyState extends State<P24PROGRESSMAINBody> {
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
                CuPage = Page18();
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
                      USERDATA.PLANT + ' : SELECT TANK',
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
                            MouseRegion(
                              onEnter: (_) {
                                setState(() {
                                  P24PROGRESSVAR.isHoveredPM1 = true;
                                });
                              },
                              onExit: (_) {
                                setState(() {
                                  P24PROGRESSVAR.isHoveredPM1 = false;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      P24PROGRESSVAR.isHoveredPM1 = false;
                                    });
                                    // USERDATA.PLANTNUMBER = PLANTNUMBER.BPPM2;
                                    USERDATA.TANK = 'LIQUIDPM1';
                                    print(USERDATA.TANK);
                                    print(USERDATA.PLANTNUMBER);
                                    if (USERDATA.ACTION == 'INCOMING') {
                                      CuPage = Page13();
                                      MainBodyContext.read<ChangePage_Bloc>()
                                          .add(ChangePage_nodrower());
                                    } else {}
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 100),
                                    height:
                                        P24PROGRESSVAR.isHoveredPM1 ? 170 : 150,
                                    width:
                                        P24PROGRESSVAR.isHoveredPM1 ? 170 : 150,
                                    decoration: BoxDecoration(
                                      color: P24PROGRESSVAR.isHoveredPM1
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
                                        'PM1',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            MouseRegion(
                              onEnter: (_) {
                                setState(() {
                                  P24PROGRESSVAR.isHoveredPM2 = true;
                                });
                              },
                              onExit: (_) {
                                setState(() {
                                  P24PROGRESSVAR.isHoveredPM2 = false;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      P24PROGRESSVAR.isHoveredPM2 = false;
                                    });
                                    // USERDATA.PLANTNUMBER = PLANTNUMBER.BPPM2;
                                    USERDATA.TANK = 'LIQUIDPM2';
                                    print(USERDATA.TANK);
                                    print(USERDATA.PLANTNUMBER);
                                    if (USERDATA.ACTION == 'INCOMING') {
                                      CuPage = Page13();
                                      MainBodyContext.read<ChangePage_Bloc>()
                                          .add(ChangePage_nodrower());
                                    } else {}
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 100),
                                    height:
                                        P24PROGRESSVAR.isHoveredPM2 ? 170 : 150,
                                    width:
                                        P24PROGRESSVAR.isHoveredPM2 ? 170 : 150,
                                    decoration: BoxDecoration(
                                      color: P24PROGRESSVAR.isHoveredPM2
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
                                        'PM2',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            MouseRegion(
                              onEnter: (_) {
                                setState(() {
                                  P24PROGRESSVAR.isHoveredPM3 = true;
                                });
                              },
                              onExit: (_) {
                                setState(() {
                                  P24PROGRESSVAR.isHoveredPM3 = false;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      P24PROGRESSVAR.isHoveredPM3 = false;
                                    });
                                    // USERDATA.PLANTNUMBER = PLANTNUMBER.BPPM3;
                                    USERDATA.TANK = 'LIQUIDPM3';
                                    print(USERDATA.TANK);
                                    print(USERDATA.PLANTNUMBER);
                                    if (USERDATA.ACTION == 'INCOMING') {
                                      CuPage = Page13();
                                      MainBodyContext.read<ChangePage_Bloc>()
                                          .add(ChangePage_nodrower());
                                    } else {}
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 100),
                                    height:
                                        P24PROGRESSVAR.isHoveredPM3 ? 170 : 150,
                                    width:
                                        P24PROGRESSVAR.isHoveredPM3 ? 170 : 150,
                                    decoration: BoxDecoration(
                                      color: P24PROGRESSVAR.isHoveredPM3
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
                                        'PM3',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            MouseRegion(
                              onEnter: (_) {
                                setState(() {
                                  P24PROGRESSVAR.isHoveredPM4 = true;
                                });
                              },
                              onExit: (_) {
                                setState(() {
                                  P24PROGRESSVAR.isHoveredPM4 = false;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      P24PROGRESSVAR.isHoveredPM4 = false;
                                    });
                                    // USERDATA.PLANTNUMBER = PLANTNUMBER.BPPM4;
                                    USERDATA.TANK = 'LIQUIDPM4';
                                    print(USERDATA.TANK);
                                    print(USERDATA.PLANTNUMBER);
                                    if (USERDATA.ACTION == 'INCOMING') {
                                      CuPage = Page13();
                                      MainBodyContext.read<ChangePage_Bloc>()
                                          .add(ChangePage_nodrower());
                                    } else {}
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 100),
                                    height:
                                        P24PROGRESSVAR.isHoveredPM4 ? 170 : 150,
                                    width:
                                        P24PROGRESSVAR.isHoveredPM4 ? 170 : 150,
                                    decoration: BoxDecoration(
                                      color: P24PROGRESSVAR.isHoveredPM4
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
                                        'PM4',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            MouseRegion(
                              onEnter: (_) {
                                setState(() {
                                  P24PROGRESSVAR.isHoveredPM5 = true;
                                });
                              },
                              onExit: (_) {
                                setState(() {
                                  P24PROGRESSVAR.isHoveredPM5 = false;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      P24PROGRESSVAR.isHoveredPM5 = false;
                                    });
                                    // USERDATA.PLANTNUMBER = PLANTNUMBER.BPPM4;
                                    USERDATA.TANK = 'LIQUIDPM5';
                                    print(USERDATA.TANK);
                                    print(USERDATA.PLANTNUMBER);
                                    if (USERDATA.ACTION == 'INCOMING') {
                                      CuPage = Page13();
                                      MainBodyContext.read<ChangePage_Bloc>()
                                          .add(ChangePage_nodrower());
                                    } else {}
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 100),
                                    height:
                                        P24PROGRESSVAR.isHoveredPM5 ? 170 : 150,
                                    width:
                                        P24PROGRESSVAR.isHoveredPM5 ? 170 : 150,
                                    decoration: BoxDecoration(
                                      color: P24PROGRESSVAR.isHoveredPM5
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
                                        'PM5',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            MouseRegion(
                              onEnter: (_) {
                                setState(() {
                                  P24PROGRESSVAR.isHoveredPM6 = true;
                                });
                              },
                              onExit: (_) {
                                setState(() {
                                  P24PROGRESSVAR.isHoveredPM6 = false;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      P24PROGRESSVAR.isHoveredPM6 = false;
                                    });
                                    // USERDATA.PLANTNUMBER = PLANTNUMBER.BPPM4;
                                    USERDATA.TANK = 'LIQUIDPM6';
                                    print(USERDATA.TANK);
                                    print(USERDATA.PLANTNUMBER);
                                    if (USERDATA.ACTION == 'INCOMING') {
                                      CuPage = Page13();
                                      MainBodyContext.read<ChangePage_Bloc>()
                                          .add(ChangePage_nodrower());
                                    } else {}
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 100),
                                    height:
                                        P24PROGRESSVAR.isHoveredPM6 ? 170 : 150,
                                    width:
                                        P24PROGRESSVAR.isHoveredPM6 ? 170 : 150,
                                    decoration: BoxDecoration(
                                      color: P24PROGRESSVAR.isHoveredPM6
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
                                        'PM6',
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
                        SizedBox(height: 10),
                        Wrap(
                          spacing: 10.0,
                          runSpacing: 10.0,
                          children: [
                            MouseRegion(
                              onEnter: (_) {
                                setState(() {
                                  P24PROGRESSVAR.isHoveredPM7 = true;
                                });
                              },
                              onExit: (_) {
                                setState(() {
                                  P24PROGRESSVAR.isHoveredPM7 = false;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      P24PROGRESSVAR.isHoveredPM7 = false;
                                    });
                                    // USERDATA.PLANTNUMBER = PLANTNUMBER.BPPM2;
                                    USERDATA.TANK = 'LIQUIDPM7';
                                    print(USERDATA.TANK);
                                    print(USERDATA.PLANTNUMBER);
                                    if (USERDATA.ACTION == 'INCOMING') {
                                      CuPage = Page13();
                                      MainBodyContext.read<ChangePage_Bloc>()
                                          .add(ChangePage_nodrower());
                                    } else {}
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 100),
                                    height:
                                        P24PROGRESSVAR.isHoveredPM7 ? 170 : 150,
                                    width:
                                        P24PROGRESSVAR.isHoveredPM7 ? 170 : 150,
                                    decoration: BoxDecoration(
                                      color: P24PROGRESSVAR.isHoveredPM7
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
                                        'PM7',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            MouseRegion(
                              onEnter: (_) {
                                setState(() {
                                  P24PROGRESSVAR.isHoveredPM8 = true;
                                });
                              },
                              onExit: (_) {
                                setState(() {
                                  P24PROGRESSVAR.isHoveredPM8 = false;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      P24PROGRESSVAR.isHoveredPM8 = false;
                                    });
                                    // USERDATA.PLANTNUMBER = PLANTNUMBER.BPPM2;
                                    USERDATA.TANK = 'LIQUIDPM8';
                                    print(USERDATA.TANK);
                                    print(USERDATA.PLANTNUMBER);
                                    if (USERDATA.ACTION == 'INCOMING') {
                                      CuPage = Page13();
                                      MainBodyContext.read<ChangePage_Bloc>()
                                          .add(ChangePage_nodrower());
                                    } else {}
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 100),
                                    height:
                                        P24PROGRESSVAR.isHoveredPM8 ? 170 : 150,
                                    width:
                                        P24PROGRESSVAR.isHoveredPM8 ? 170 : 150,
                                    decoration: BoxDecoration(
                                      color: P24PROGRESSVAR.isHoveredPM8
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
                                        'PM8',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            MouseRegion(
                              onEnter: (_) {
                                setState(() {
                                  P24PROGRESSVAR.isHoveredPM9 = true;
                                });
                              },
                              onExit: (_) {
                                setState(() {
                                  P24PROGRESSVAR.isHoveredPM9 = false;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      P24PROGRESSVAR.isHoveredPM9 = false;
                                    });
                                    // USERDATA.PLANTNUMBER = PLANTNUMBER.BPPM3;
                                    USERDATA.TANK = 'LIQUIDPM9';
                                    print(USERDATA.TANK);
                                    print(USERDATA.PLANTNUMBER);
                                    if (USERDATA.ACTION == 'INCOMING') {
                                      CuPage = Page13();
                                      MainBodyContext.read<ChangePage_Bloc>()
                                          .add(ChangePage_nodrower());
                                    } else {}
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 100),
                                    height:
                                        P24PROGRESSVAR.isHoveredPM9 ? 170 : 150,
                                    width:
                                        P24PROGRESSVAR.isHoveredPM9 ? 170 : 150,
                                    decoration: BoxDecoration(
                                      color: P24PROGRESSVAR.isHoveredPM9
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
                                        'PM9',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            MouseRegion(
                              onEnter: (_) {
                                setState(() {
                                  P24PROGRESSVAR.isHoveredPM10 = true;
                                });
                              },
                              onExit: (_) {
                                setState(() {
                                  P24PROGRESSVAR.isHoveredPM10 = false;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      P24PROGRESSVAR.isHoveredPM10 = false;
                                    });
                                    // USERDATA.PLANTNUMBER = PLANTNUMBER.BPPM4;
                                    USERDATA.TANK = 'LIQUIDPM10';
                                    print(USERDATA.TANK);
                                    print(USERDATA.PLANTNUMBER);
                                    if (USERDATA.ACTION == 'INCOMING') {
                                      CuPage = Page13();
                                      MainBodyContext.read<ChangePage_Bloc>()
                                          .add(ChangePage_nodrower());
                                    } else {}
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 100),
                                    height: P24PROGRESSVAR.isHoveredPM10
                                        ? 170
                                        : 150,
                                    width: P24PROGRESSVAR.isHoveredPM10
                                        ? 170
                                        : 150,
                                    decoration: BoxDecoration(
                                      color: P24PROGRESSVAR.isHoveredPM10
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
                                        'PM10',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            MouseRegion(
                              onEnter: (_) {
                                setState(() {
                                  P24PROGRESSVAR.isHoveredPM11 = true;
                                });
                              },
                              onExit: (_) {
                                setState(() {
                                  P24PROGRESSVAR.isHoveredPM11 = false;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      P24PROGRESSVAR.isHoveredPM11 = false;
                                    });
                                    // USERDATA.PLANTNUMBER = PLANTNUMBER.BPPM4;
                                    USERDATA.TANK = 'LIQUIDPM11';
                                    print(USERDATA.TANK);
                                    print(USERDATA.PLANTNUMBER);
                                    if (USERDATA.ACTION == 'INCOMING') {
                                      CuPage = Page13();
                                      MainBodyContext.read<ChangePage_Bloc>()
                                          .add(ChangePage_nodrower());
                                    } else {}
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 100),
                                    height: P24PROGRESSVAR.isHoveredPM11
                                        ? 170
                                        : 150,
                                    width: P24PROGRESSVAR.isHoveredPM11
                                        ? 170
                                        : 150,
                                    decoration: BoxDecoration(
                                      color: P24PROGRESSVAR.isHoveredPM11
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
                                        'PM11',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            MouseRegion(
                              onEnter: (_) {
                                setState(() {
                                  P24PROGRESSVAR.isHoveredPM12 = true;
                                });
                              },
                              onExit: (_) {
                                setState(() {
                                  P24PROGRESSVAR.isHoveredPM12 = false;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      P24PROGRESSVAR.isHoveredPM12 = false;
                                    });
                                    // USERDATA.PLANTNUMBER = PLANTNUMBER.BPPM4;
                                    USERDATA.TANK = 'LIQUIDPM12';
                                    print(USERDATA.TANK);
                                    print(USERDATA.PLANTNUMBER);
                                    if (USERDATA.ACTION == 'INCOMING') {
                                      CuPage = Page13();
                                      MainBodyContext.read<ChangePage_Bloc>()
                                          .add(ChangePage_nodrower());
                                    } else {}
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 100),
                                    height: P24PROGRESSVAR.isHoveredPM12
                                        ? 170
                                        : 150,
                                    width: P24PROGRESSVAR.isHoveredPM12
                                        ? 170
                                        : 150,
                                    decoration: BoxDecoration(
                                      color: P24PROGRESSVAR.isHoveredPM12
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
                                        'PM12',
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
                        SizedBox(height: 10),
                        Wrap(
                          spacing: 10.0,
                          runSpacing: 10.0,
                          children: [
                            MouseRegion(
                              onEnter: (_) {
                                setState(() {
                                  P24PROGRESSVAR.isHoveredPM13 = true;
                                });
                              },
                              onExit: (_) {
                                setState(() {
                                  P24PROGRESSVAR.isHoveredPM13 = false;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      P24PROGRESSVAR.isHoveredPM13 = false;
                                    });
                                    // USERDATA.PLANTNUMBER = PLANTNUMBER.BPPM2;
                                    USERDATA.TANK = 'LIQUIDPM13';
                                    print(USERDATA.TANK);
                                    print(USERDATA.PLANTNUMBER);
                                    if (USERDATA.ACTION == 'INCOMING') {
                                      CuPage = Page13();
                                      MainBodyContext.read<ChangePage_Bloc>()
                                          .add(ChangePage_nodrower());
                                    } else {}
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 100),
                                    height: P24PROGRESSVAR.isHoveredPM13
                                        ? 170
                                        : 150,
                                    width: P24PROGRESSVAR.isHoveredPM13
                                        ? 170
                                        : 150,
                                    decoration: BoxDecoration(
                                      color: P24PROGRESSVAR.isHoveredPM13
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
                                        'PM13',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            MouseRegion(
                              onEnter: (_) {
                                setState(() {
                                  P24PROGRESSVAR.isHoveredPM14 = true;
                                });
                              },
                              onExit: (_) {
                                setState(() {
                                  P24PROGRESSVAR.isHoveredPM14 = false;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      P24PROGRESSVAR.isHoveredPM14 = false;
                                    });
                                    // USERDATA.PLANTNUMBER = PLANTNUMBER.BPPM2;
                                    USERDATA.TANK = 'LIQUIDPM14';
                                    print(USERDATA.TANK);
                                    print(USERDATA.PLANTNUMBER);
                                    if (USERDATA.ACTION == 'INCOMING') {
                                      CuPage = Page13();
                                      MainBodyContext.read<ChangePage_Bloc>()
                                          .add(ChangePage_nodrower());
                                    } else {}
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 100),
                                    height: P24PROGRESSVAR.isHoveredPM14
                                        ? 170
                                        : 150,
                                    width: P24PROGRESSVAR.isHoveredPM14
                                        ? 170
                                        : 150,
                                    decoration: BoxDecoration(
                                      color: P24PROGRESSVAR.isHoveredPM14
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
                                        'PM14',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            MouseRegion(
                              onEnter: (_) {
                                setState(() {
                                  P24PROGRESSVAR.isHoveredPM15 = true;
                                });
                              },
                              onExit: (_) {
                                setState(() {
                                  P24PROGRESSVAR.isHoveredPM15 = false;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      P24PROGRESSVAR.isHoveredPM9 = false;
                                    });
                                    // USERDATA.PLANTNUMBER = PLANTNUMBER.BPPM3;
                                    USERDATA.TANK = 'LIQUIDPM15';
                                    print(USERDATA.TANK);
                                    print(USERDATA.PLANTNUMBER);
                                    if (USERDATA.ACTION == 'INCOMING') {
                                      CuPage = Page13();
                                      MainBodyContext.read<ChangePage_Bloc>()
                                          .add(ChangePage_nodrower());
                                    } else {}
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 100),
                                    height: P24PROGRESSVAR.isHoveredPM15
                                        ? 170
                                        : 150,
                                    width: P24PROGRESSVAR.isHoveredPM15
                                        ? 170
                                        : 150,
                                    decoration: BoxDecoration(
                                      color: P24PROGRESSVAR.isHoveredPM15
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
                                        'PM15',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            MouseRegion(
                              onEnter: (_) {
                                setState(() {
                                  P24PROGRESSVAR.isHoveredPM16 = true;
                                });
                              },
                              onExit: (_) {
                                setState(() {
                                  P24PROGRESSVAR.isHoveredPM16 = false;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      P24PROGRESSVAR.isHoveredPM16 = false;
                                    });
                                    // USERDATA.PLANTNUMBER = PLANTNUMBER.BPPM4;
                                    USERDATA.TANK = 'LIQUIDPM16';
                                    print(USERDATA.TANK);
                                    print(USERDATA.PLANTNUMBER);
                                    if (USERDATA.ACTION == 'INCOMING') {
                                      CuPage = Page13();
                                      MainBodyContext.read<ChangePage_Bloc>()
                                          .add(ChangePage_nodrower());
                                    } else {}
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 100),
                                    height: P24PROGRESSVAR.isHoveredPM16
                                        ? 170
                                        : 150,
                                    width: P24PROGRESSVAR.isHoveredPM16
                                        ? 170
                                        : 150,
                                    decoration: BoxDecoration(
                                      color: P24PROGRESSVAR.isHoveredPM16
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
                                        'PM16',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            MouseRegion(
                              onEnter: (_) {
                                setState(() {
                                  P24PROGRESSVAR.isHoveredPM17 = true;
                                });
                              },
                              onExit: (_) {
                                setState(() {
                                  P24PROGRESSVAR.isHoveredPM17 = false;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      P24PROGRESSVAR.isHoveredPM17 = false;
                                    });
                                    // USERDATA.PLANTNUMBER = PLANTNUMBER.BPPM4;
                                    USERDATA.TANK = 'LIQUIDPM17';
                                    print(USERDATA.TANK);
                                    print(USERDATA.PLANTNUMBER);
                                    if (USERDATA.ACTION == 'INCOMING') {
                                      CuPage = Page13();
                                      MainBodyContext.read<ChangePage_Bloc>()
                                          .add(ChangePage_nodrower());
                                    } else {}
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 100),
                                    height: P24PROGRESSVAR.isHoveredPM17
                                        ? 170
                                        : 150,
                                    width: P24PROGRESSVAR.isHoveredPM17
                                        ? 170
                                        : 150,
                                    decoration: BoxDecoration(
                                      color: P24PROGRESSVAR.isHoveredPM17
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
                                        'PM17',
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
