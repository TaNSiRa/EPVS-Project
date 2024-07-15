import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/dummydata2.dart';

//-------------------------------------------------

abstract class P04PROGRESSGETDATA_Event {}

class P04PROGRESSGETDATA_GET extends P04PROGRESSGETDATA_Event {}

class P04PROGRESSGETDATA_GET2 extends P04PROGRESSGETDATA_Event {}

class P04PROGRESSGETDATA_GET3 extends P04PROGRESSGETDATA_Event {}

class P04PROGRESSGETDATA_FLUSH extends P04PROGRESSGETDATA_Event {}

class P04PROGRESSGETDATA_Bloc
    extends Bloc<P04PROGRESSGETDATA_Event, List<P04PROGRESSGETDATAclass>> {
  P04PROGRESSGETDATA_Bloc() : super([]) {
    on<P04PROGRESSGETDATA_GET>((event, emit) {
      return _P04PROGRESSGETDATA_GET([], emit);
    });

    on<P04PROGRESSGETDATA_GET2>((event, emit) {
      return _P04PROGRESSGETDATA_GET2([], emit);
    });
    on<P04PROGRESSGETDATA_GET3>((event, emit) {
      return _P04PROGRESSGETDATA_GET3([], emit);
    });
    on<P04PROGRESSGETDATA_FLUSH>((event, emit) {
      return _P04PROGRESSGETDATA_FLUSH([], emit);
    });
  }

  Future<void> _P04PROGRESSGETDATA_GET(List<P04PROGRESSGETDATAclass> toAdd,
      Emitter<List<P04PROGRESSGETDATAclass>> emit) async {
    List<P04PROGRESSGETDATAclass> output = [];
    //-------------------------------------------------------------------------------------
    var input = dummydatainput2;

    print(input.length);
    // for (var i = 0; i < input.length; i++) {
    //   output.add(P04PROGRESSGETDATAclass(
    //     PLANT: savenull(input[i]['plant']),
    //     STEP01: savenull(input[i]['step1']),
    //     STEP02: savenull(input[i]['step2']),
    //     STEP03: savenull(input[i]['step3']),
    //     STEP04: savenull(input[i]['step4']),
    //     STEP05: savenull(input[i]['step5']),
    //     STEP06: savenull(input[i]['step6']),
    //     STEP07: savenull(input[i]['step7']),
    //     STEP08: savenull(input[i]['step8']),
    //     STEP09: savenull(input[i]['step9']),
    //   ));
    // }
    // List<P04PROGRESSGETDATAclass> datadummy = [

    // ];

    //-------------------------------------------------------------------------------------
    // output = datadummy;

    List<P04PROGRESSGETDATAclass> outputdata =
        input.where((data) => data['location'] == 'GATEWAY').map((data) {
      return P04PROGRESSGETDATAclass(
        PLANT: savenull(data['plant']),
        STEP01: savenull(data['step1']),
        STEP02: savenull(data['step2']),
        STEP03: savenull(data['step3']),
        STEP04: savenull(data['step4']),
        STEP05: savenull(data['step5']),
        STEP06: savenull(data['step6']),
        STEP07: savenull(data['step7']),
        STEP08: savenull(data['step8']),
        STEP09: savenull(data['step9']),
      );
    }).toList();

    output = outputdata;
    emit(output);
  }

  Future<void> _P04PROGRESSGETDATA_GET2(List<P04PROGRESSGETDATAclass> toAdd,
      Emitter<List<P04PROGRESSGETDATAclass>> emit) async {
    List<P04PROGRESSGETDATAclass> output = [];
    //-------------------------------------------------------------------------------------
    List<P04PROGRESSGETDATAclass> datadummy = [
      P04PROGRESSGETDATAclass(
        PLANT: "PH PO:1234",
        STEP01: "YES",
        STEP02: "YES",
        STEP03: "YES",
        STEP04: "YES",
      ),
      P04PROGRESSGETDATAclass(
        PLANT: "PH PO:5555",
        STEP01: "YES",
        STEP02: "YES",
        STEP03: "YES",
        STEP04: "YES",
      ),
      P04PROGRESSGETDATAclass(
        PLANT: "PH PO:5556",
        STEP01: "YES",
        STEP02: "YES",
      ),
    ];

    //-------------------------------------------------------------------------------------
    output = datadummy;
    emit(output);
  }

  Future<void> _P04PROGRESSGETDATA_GET3(List<P04PROGRESSGETDATAclass> toAdd,
      Emitter<List<P04PROGRESSGETDATAclass>> emit) async {
    List<P04PROGRESSGETDATAclass> output = [];
    //-------------------------------------------------------------------------------------
    List<P04PROGRESSGETDATAclass> datadummy = [
      P04PROGRESSGETDATAclass(
        PLANT: "PH PO:1234",
        STEP01: "YES",
        STEP02: "YES",
        STEP03: "YES",
      ),
      P04PROGRESSGETDATAclass(
        PLANT: "PH PO:5555",
        STEP01: "YES",
        STEP02: "YES",
        STEP03: "YES",
        STEP04: "YES",
      ),
      P04PROGRESSGETDATAclass(
        PLANT: "PH PO:5556",
        STEP01: "YES",
        STEP02: "YES",
      ),
      P04PROGRESSGETDATAclass(
        PLANT: "PH PO:9999",
      ),
    ];

    //-------------------------------------------------------------------------------------
    output = datadummy;
    emit(output);
  }

  Future<void> _P04PROGRESSGETDATA_FLUSH(List<P04PROGRESSGETDATAclass> toAdd,
      Emitter<List<P04PROGRESSGETDATAclass>> emit) async {
    List<P04PROGRESSGETDATAclass> output = [];
    emit(output);
  }
}

class P04PROGRESSGETDATAclass {
  P04PROGRESSGETDATAclass({
    this.PLANT = '',
    this.STEP01 = '',
    this.STEP02 = '',
    this.STEP03 = '',
    this.STEP04 = '',
    this.STEP05 = '',
    this.STEP06 = '',
    this.STEP07 = '',
    this.STEP08 = '',
    this.STEP09 = '',
  });

  String PLANT;
  String STEP01;
  String STEP02;
  String STEP03;
  String STEP04;
  String STEP05;
  String STEP06;
  String STEP07;
  String STEP08;
  String STEP09;
}

String savenull(input) {
  String output = '-';
  if (input != null) {
    output = input.toString();
  }
  return output;
}
