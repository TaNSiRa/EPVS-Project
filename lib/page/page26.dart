// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/BlocEvent/26-26-P26PROGRESSGETDATA.dart';
import 'P26PROGRESS/P26PROGRESSMAIN.dart';

//---------------------------------------------------------

class Page26 extends StatelessWidget {
  const Page26({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page26blockget();
  }
}

class Page26blockget extends StatelessWidget {
  const Page26blockget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => P26PROGRESSGETDATA_Bloc(),
        child:
            BlocBuilder<P26PROGRESSGETDATA_Bloc, List<P26PROGRESSGETDATAclass>>(
          builder: (context, data) {
            return Page26Body(
              data: data,
            );
          },
        ));
  }
}

class Page26Body extends StatelessWidget {
  Page26Body({
    super.key,
    this.data,
  });
  List<P26PROGRESSGETDATAclass>? data;
  @override
  Widget build(BuildContext context) {
    return P26PROGRESSMAIN(
      data: data,
    );
  }
}
