// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newmaster/data/global.dart';
import 'package:newmaster/page/page9.dart';

import '../../bloc/BlocEvent/ChangePageEvent.dart';
import '../../mainBody.dart';
import '../page11.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../bloc/cubit/NotificationEvent.dart';

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
    return Column(
      children: [
        Center(
          child: Padding(
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
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: () {
                    USERDATA.INSMASTER = 'H&S';
                    print(USERDATA.INSMASTER);
                    CuPage = Page9();
                    MainBodyContext.read<ChangePage_Bloc>()
                        .add(ChangePage_nodrower());
                  },
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      border: Border.all(
                        color: Colors.black,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                      child: Text(
                        'Heat & Surface',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: () {
                    USERDATA.INSMASTER = 'CHEM';
                    print(USERDATA.INSMASTER);
                    CuPage = Page11();
                    MainBodyContext.read<ChangePage_Bloc>()
                        .add(ChangePage_nodrower());
                  },
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      border: Border.all(
                        color: Colors.black,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                      child: Text(
                        'CHEM',
                        style: TextStyle(color: Colors.white, fontSize: 25),
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
