// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newmaster/data/global.dart';
import 'package:newmaster/page/page8.dart';

import '../../bloc/BlocEvent/ChangePageEvent.dart';
import '../../mainBody.dart';
import '../page1.dart';
import '../page2.dart';
import '../page3.dart';
import '../page4.dart';
import '../page9.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../bloc/cubit/NotificationEvent.dart';

class P11PROGRESSMAIN extends StatefulWidget {
  const P11PROGRESSMAIN({super.key});

  @override
  State<P11PROGRESSMAIN> createState() => _P11PROGRESSMAINState();
}

class _P11PROGRESSMAINState extends State<P11PROGRESSMAIN> {
  @override
  Widget build(BuildContext context) {
    return P11PROGRESSMAINBody();
  }
}

class P11PROGRESSMAINBody extends StatefulWidget {
  const P11PROGRESSMAINBody({super.key});

  @override
  State<P11PROGRESSMAINBody> createState() => _P11PROGRESSMAINBodyState();
}

class _P11PROGRESSMAINBodyState extends State<P11PROGRESSMAINBody> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 10,
          left: 10,
          child: IconButton(
            icon: Icon(Icons.arrow_back, size: 30),
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
                    'SELECT ACTION',
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
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: InkWell(
                  onTap: () {
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
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: InkWell(
                  onTap: () {
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
                        'SCADA DATA',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: InkWell(
                  onTap: () {
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
                        'AQC',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
