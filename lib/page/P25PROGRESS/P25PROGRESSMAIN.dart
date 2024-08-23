// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/BlocEvent/19-19-P19PROGRESSGETDATA.dart';
import '../../bloc/BlocEvent/ChangePageEvent.dart';
import '../../data/global.dart';
import '../../mainBody.dart';
import '../page18.dart';
import '../page26.dart';
import 'P25PROGRESSVAR.dart';

late BuildContext P19PROGRESSMAINcontext;

class P25PROGRESSMAIN extends StatefulWidget {
  P25PROGRESSMAIN({
    super.key,
    this.data,
  });
  List<P19PROGRESSGETDATAclass>? data;

  @override
  State<P25PROGRESSMAIN> createState() => _P25PROGRESSMAINState();
}

class _P25PROGRESSMAINState extends State<P25PROGRESSMAIN> {
  @override
  void initState() {
    super.initState();
    context.read<P19PROGRESSGETDATA_Bloc>().add(P19PROGRESSGETDATA_GET());
  }

  @override
  Widget build(BuildContext context) {
    P19PROGRESSMAINcontext = context;
    List<P19PROGRESSGETDATAclass> _datain = widget.data ?? [];
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
          Positioned(
            top: 10,
            right: 50,
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    context
                        .read<P19PROGRESSGETDATA_Bloc>()
                        .add(P19PROGRESSGETDATA_GET());
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(10),
                    backgroundColor: Colors.black,
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
                      USERDATA.PLANTNAME + ' : SELECT TANK',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              ..._datain.map((_data) {
                return Expanded(
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
                                    P25PROGRESSVAR.isHoveredPM1 = true;
                                  });
                                },
                                onExit: (_) {
                                  setState(() {
                                    P25PROGRESSVAR.isHoveredPM1 = false;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        P25PROGRESSVAR.isHoveredPM1 = false;
                                      });
                                      USERDATA.TANK = 'PM1';
                                      USERDATA.ORDER = _data.PM1ORDER;
                                      print(USERDATA.TANK);
                                      print(USERDATA.ORDER);
                                      CuPage = Page26();
                                      MainBodyContext.read<ChangePage_Bloc>()
                                          .add(ChangePage_nodrower());
                                    },
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 100),
                                      height: P25PROGRESSVAR.isHoveredPM1
                                          ? 170
                                          : 150,
                                      width: P25PROGRESSVAR.isHoveredPM1
                                          ? 170
                                          : 150,
                                      decoration: BoxDecoration(
                                        color: P25PROGRESSVAR.isHoveredPM1
                                            ? Colors.greenAccent
                                            : Colors.green,
                                        border: Border.all(
                                          color: Colors.black,
                                          width: 2.0,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              'TANK : PM1',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16),
                                            ),
                                            Text(
                                              'Order : ' + _data.PM1ORDER,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              MouseRegion(
                                onEnter: (_) {
                                  setState(() {
                                    P25PROGRESSVAR.isHoveredPM2 = true;
                                  });
                                },
                                onExit: (_) {
                                  setState(() {
                                    P25PROGRESSVAR.isHoveredPM2 = false;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        P25PROGRESSVAR.isHoveredPM2 = false;
                                      });
                                      USERDATA.TANK = 'PM2';
                                      USERDATA.ORDER = _data.PM2ORDER;
                                      print(USERDATA.TANK);
                                      print(USERDATA.ORDER);
                                      CuPage = Page26();
                                      MainBodyContext.read<ChangePage_Bloc>()
                                          .add(ChangePage_nodrower());
                                    },
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 100),
                                      height: P25PROGRESSVAR.isHoveredPM2
                                          ? 170
                                          : 150,
                                      width: P25PROGRESSVAR.isHoveredPM2
                                          ? 170
                                          : 150,
                                      decoration: BoxDecoration(
                                        color: P25PROGRESSVAR.isHoveredPM2
                                            ? Colors.greenAccent
                                            : Colors.green,
                                        border: Border.all(
                                          color: Colors.black,
                                          width: 2.0,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              'TANK : PM2',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16),
                                            ),
                                            Text(
                                              'Order : ' + _data.PM2ORDER,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              MouseRegion(
                                onEnter: (_) {
                                  setState(() {
                                    P25PROGRESSVAR.isHoveredPM3 = true;
                                  });
                                },
                                onExit: (_) {
                                  setState(() {
                                    P25PROGRESSVAR.isHoveredPM3 = false;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        P25PROGRESSVAR.isHoveredPM3 = false;
                                      });
                                      USERDATA.TANK = 'PM3';
                                      USERDATA.ORDER = _data.PM3ORDER;
                                      print(USERDATA.TANK);
                                      print(USERDATA.ORDER);
                                      CuPage = Page26();
                                      MainBodyContext.read<ChangePage_Bloc>()
                                          .add(ChangePage_nodrower());
                                    },
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 100),
                                      height: P25PROGRESSVAR.isHoveredPM3
                                          ? 170
                                          : 150,
                                      width: P25PROGRESSVAR.isHoveredPM3
                                          ? 170
                                          : 150,
                                      decoration: BoxDecoration(
                                        color: P25PROGRESSVAR.isHoveredPM3
                                            ? Colors.greenAccent
                                            : Colors.green,
                                        border: Border.all(
                                          color: Colors.black,
                                          width: 2.0,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              'TANK : PM3',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16),
                                            ),
                                            Text(
                                              'Order : ' + _data.PM3ORDER,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Wrap(
                            spacing: 10.0,
                            runSpacing: 10.0,
                            children: [
                              MouseRegion(
                                onEnter: (_) {
                                  setState(() {
                                    P25PROGRESSVAR.isHoveredPM4 = true;
                                  });
                                },
                                onExit: (_) {
                                  setState(() {
                                    P25PROGRESSVAR.isHoveredPM4 = false;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        P25PROGRESSVAR.isHoveredPM4 = false;
                                      });
                                      USERDATA.TANK = 'PM4';
                                      USERDATA.ORDER = _data.PM4ORDER;
                                      print(USERDATA.TANK);
                                      print(USERDATA.ORDER);
                                      CuPage = Page26();
                                      MainBodyContext.read<ChangePage_Bloc>()
                                          .add(ChangePage_nodrower());
                                    },
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 100),
                                      height: P25PROGRESSVAR.isHoveredPM4
                                          ? 170
                                          : 150,
                                      width: P25PROGRESSVAR.isHoveredPM4
                                          ? 170
                                          : 150,
                                      decoration: BoxDecoration(
                                        color: P25PROGRESSVAR.isHoveredPM4
                                            ? Colors.greenAccent
                                            : Colors.green,
                                        border: Border.all(
                                          color: Colors.black,
                                          width: 2.0,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              'TANK : PM4',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16),
                                            ),
                                            Text(
                                              'Order : ' + _data.PM4ORDER,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              MouseRegion(
                                onEnter: (_) {
                                  setState(() {
                                    P25PROGRESSVAR.isHoveredPM5 = true;
                                  });
                                },
                                onExit: (_) {
                                  setState(() {
                                    P25PROGRESSVAR.isHoveredPM5 = false;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        P25PROGRESSVAR.isHoveredPM5 = false;
                                      });
                                      USERDATA.TANK = 'PM5';
                                      USERDATA.ORDER = _data.PM5ORDER;
                                      print(USERDATA.TANK);
                                      print(USERDATA.ORDER);
                                      CuPage = Page26();
                                      MainBodyContext.read<ChangePage_Bloc>()
                                          .add(ChangePage_nodrower());
                                    },
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 100),
                                      height: P25PROGRESSVAR.isHoveredPM5
                                          ? 170
                                          : 150,
                                      width: P25PROGRESSVAR.isHoveredPM5
                                          ? 170
                                          : 150,
                                      decoration: BoxDecoration(
                                        color: P25PROGRESSVAR.isHoveredPM5
                                            ? Colors.greenAccent
                                            : Colors.green,
                                        border: Border.all(
                                          color: Colors.black,
                                          width: 2.0,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              'TANK : PM5',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16),
                                            ),
                                            Text(
                                              'Order : ' + _data.PM5ORDER,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16),
                                            ),
                                          ],
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
                );
              })
            ],
          ),
        ],
      ),
    );
  }
}
