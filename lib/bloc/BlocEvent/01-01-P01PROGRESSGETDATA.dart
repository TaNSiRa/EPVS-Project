import 'package:flutter_bloc/flutter_bloc.dart';

//-------------------------------------------------

abstract class P01PROGRESSGETDATA_Event {}

class P01PROGRESSGETDATA_GET extends P01PROGRESSGETDATA_Event {}

class P01PROGRESSGETDATA_FLUSH extends P01PROGRESSGETDATA_Event {}

class P01PROGRESSGETDATA_Bloc
    extends Bloc<P01PROGRESSGETDATA_Event, List<P01PROGRESSGETDATAclass>> {
  P01PROGRESSGETDATA_Bloc() : super([]) {
    on<P01PROGRESSGETDATA_GET>((event, emit) {
      return _P01PROGRESSGETDATA_GET([], emit);
    });
    on<P01PROGRESSGETDATA_FLUSH>((event, emit) {
      return _P01PROGRESSGETDATA_FLUSH([], emit);
    });
  }
  Future<void> _P01PROGRESSGETDATA_GET(List<P01PROGRESSGETDATAclass> toAdd,
      Emitter<List<P01PROGRESSGETDATAclass>> emit) async {
    List<P01PROGRESSGETDATAclass> output = [];
    emit(output);
  }

  Future<void> _P01PROGRESSGETDATA_FLUSH(List<P01PROGRESSGETDATAclass> toAdd,
      Emitter<List<P01PROGRESSGETDATAclass>> emit) async {
    List<P01PROGRESSGETDATAclass> output = [];
    emit(output);
  }
}

class P01PROGRESSGETDATAclass {
  P01PROGRESSGETDATAclass({
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
