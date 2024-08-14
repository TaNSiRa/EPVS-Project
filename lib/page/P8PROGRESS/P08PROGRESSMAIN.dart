import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newmaster/data/global.dart';
import 'package:newmaster/page/page9.dart';

import '../../bloc/BlocEvent/ChangePageEvent.dart';
import '../../mainBody.dart';
import '../page11.dart';
import 'P08PROGRESSVAR.dart';

class P08PROGRESSMAIN extends StatefulWidget {
  const P08PROGRESSMAIN({super.key});

  @override
  State<P08PROGRESSMAIN> createState() => _P08PROGRESSMAINState();
}

class _P08PROGRESSMAINState extends State<P08PROGRESSMAIN> {
  @override
  Widget build(BuildContext context) {
    return P08PROGRESSMAINBody();
  }
}

class P08PROGRESSMAINBody extends StatefulWidget {
  const P08PROGRESSMAINBody({super.key});

  @override
  State<P08PROGRESSMAINBody> createState() => _P08PROGRESSMAINBodyState();
}

class _P08PROGRESSMAINBodyState extends State<P08PROGRESSMAINBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                  'SELECT PROGRESS',
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
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: MouseRegion(
                      onEnter: (_) {
                        setState(() {
                          P08PROGRESSVAR.isHoveredHAndS = true;
                        });
                      },
                      onExit: (_) {
                        setState(() {
                          P08PROGRESSVAR.isHoveredHAndS = false;
                        });
                      },
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            P08PROGRESSVAR.isHoveredHAndS = false;
                          });
                          USERDATA.INSMASTER = 'H&S';
                          print(USERDATA.INSMASTER);
                          CuPage = Page9();
                          MainBodyContext.read<ChangePage_Bloc>()
                              .add(ChangePage_nodrower());
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          height: P08PROGRESSVAR.isHoveredHAndS ? 220 : 200,
                          width: P08PROGRESSVAR.isHoveredHAndS ? 220 : 200,
                          decoration: BoxDecoration(
                            color: P08PROGRESSVAR.isHoveredHAndS
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
                              'Heat & Surface',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: MouseRegion(
                      onEnter: (_) {
                        setState(() {
                          P08PROGRESSVAR.isHoveredChem = true;
                        });
                      },
                      onExit: (_) {
                        setState(() {
                          P08PROGRESSVAR.isHoveredChem = false;
                        });
                      },
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            P08PROGRESSVAR.isHoveredChem = false;
                          });
                          USERDATA.INSMASTER = 'CHEM';
                          print(USERDATA.INSMASTER);
                          CuPage = Page11();
                          MainBodyContext.read<ChangePage_Bloc>()
                              .add(ChangePage_nodrower());
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          height: P08PROGRESSVAR.isHoveredChem ? 220 : 200,
                          width: P08PROGRESSVAR.isHoveredChem ? 220 : 200,
                          decoration: BoxDecoration(
                            color: P08PROGRESSVAR.isHoveredChem
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
                              'CHEM',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                          ),
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
    );
  }
}
