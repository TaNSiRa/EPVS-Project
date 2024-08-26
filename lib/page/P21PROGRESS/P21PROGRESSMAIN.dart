// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/BlocEvent/19-19-P19PROGRESSGETDATA.dart';
import '../../bloc/BlocEvent/ChangePageEvent.dart';
import '../../data/global.dart';
import '../../mainBody.dart';
import '../page18.dart';
import '../page26.dart';
import 'P21PROGRESSVAR.dart';

late BuildContext P19PROGRESSMAINcontext;

class P21PROGRESSMAIN extends StatefulWidget {
  P21PROGRESSMAIN({
    super.key,
    this.data,
  });
  List<P19PROGRESSGETDATAclass>? data;

  @override
  State<P21PROGRESSMAIN> createState() => _P21PROGRESSMAINState();
}

class _P21PROGRESSMAINState extends State<P21PROGRESSMAIN> {
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
                                    P21PROGRESSVAR.isHoveredPM2 = true;
                                  });
                                },
                                onExit: (_) {
                                  setState(() {
                                    P21PROGRESSVAR.isHoveredPM2 = false;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        P21PROGRESSVAR.isHoveredPM2 = false;
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
                                      duration: Duration(milliseconds: 200),
                                      height: P21PROGRESSVAR.isHoveredPM2
                                          ? 170
                                          : 150,
                                      width: P21PROGRESSVAR.isHoveredPM2
                                          ? 170
                                          : 150,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: P21PROGRESSVAR.isHoveredPM2
                                              ? [
                                                  Colors.lightBlueAccent,
                                                  Colors.blueAccent
                                                ]
                                              : [Colors.blue, Colors.indigo],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                        ),
                                        border: Border.all(
                                          color: Colors.black87,
                                          width: 2.0,
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.3),
                                            spreadRadius: 2,
                                            blurRadius: 5,
                                            offset: Offset(2, 3),
                                          ),
                                        ],
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'TANK : PM2',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                shadows: [
                                                  Shadow(
                                                    blurRadius: 5.0,
                                                    color: Colors.black45,
                                                    offset: Offset(2, 2),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 8),
                                            Text(
                                              'Order : ${_data.PM2ORDER}',
                                              style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 16,
                                                shadows: [
                                                  Shadow(
                                                    blurRadius: 5.0,
                                                    color: Colors.black45,
                                                    offset: Offset(2, 2),
                                                  ),
                                                ],
                                              ),
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
                                    P21PROGRESSVAR.isHoveredPM3 = true;
                                  });
                                },
                                onExit: (_) {
                                  setState(() {
                                    P21PROGRESSVAR.isHoveredPM3 = false;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        P21PROGRESSVAR.isHoveredPM3 = false;
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
                                      duration: Duration(milliseconds: 200),
                                      height: P21PROGRESSVAR.isHoveredPM3
                                          ? 170
                                          : 150,
                                      width: P21PROGRESSVAR.isHoveredPM3
                                          ? 170
                                          : 150,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: P21PROGRESSVAR.isHoveredPM3
                                              ? [
                                                  Colors.lightBlueAccent,
                                                  Colors.blueAccent
                                                ]
                                              : [Colors.blue, Colors.indigo],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                        ),
                                        border: Border.all(
                                          color: Colors.black87,
                                          width: 2.0,
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.3),
                                            spreadRadius: 2,
                                            blurRadius: 5,
                                            offset: Offset(2, 3),
                                          ),
                                        ],
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'TANK : PM3',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                shadows: [
                                                  Shadow(
                                                    blurRadius: 5.0,
                                                    color: Colors.black45,
                                                    offset: Offset(2, 2),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 8),
                                            Text(
                                              'Order : ${_data.PM3ORDER}',
                                              style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 16,
                                                shadows: [
                                                  Shadow(
                                                    blurRadius: 5.0,
                                                    color: Colors.black45,
                                                    offset: Offset(2, 2),
                                                  ),
                                                ],
                                              ),
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
                                    P21PROGRESSVAR.isHoveredPM4 = true;
                                  });
                                },
                                onExit: (_) {
                                  setState(() {
                                    P21PROGRESSVAR.isHoveredPM4 = false;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        P21PROGRESSVAR.isHoveredPM4 = false;
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
                                      duration: Duration(milliseconds: 200),
                                      height: P21PROGRESSVAR.isHoveredPM4
                                          ? 170
                                          : 150,
                                      width: P21PROGRESSVAR.isHoveredPM4
                                          ? 170
                                          : 150,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: P21PROGRESSVAR.isHoveredPM4
                                              ? [
                                                  Colors.lightBlueAccent,
                                                  Colors.blueAccent
                                                ]
                                              : [Colors.blue, Colors.indigo],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                        ),
                                        border: Border.all(
                                          color: Colors.black87,
                                          width: 2.0,
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.3),
                                            spreadRadius: 2,
                                            blurRadius: 5,
                                            offset: Offset(2, 3),
                                          ),
                                        ],
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'TANK : PM4',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                shadows: [
                                                  Shadow(
                                                    blurRadius: 5.0,
                                                    color: Colors.black45,
                                                    offset: Offset(2, 2),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 8),
                                            Text(
                                              'Order : ${_data.PM4ORDER}',
                                              style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 16,
                                                shadows: [
                                                  Shadow(
                                                    blurRadius: 5.0,
                                                    color: Colors.black45,
                                                    offset: Offset(2, 2),
                                                  ),
                                                ],
                                              ),
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
