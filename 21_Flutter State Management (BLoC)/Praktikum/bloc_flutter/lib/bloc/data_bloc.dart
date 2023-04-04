import 'package:bloc_flutter/bloc/data_event.dart';
import 'package:bloc_flutter/bloc/data_state.dart';
import 'package:bloc_flutter/model/datamhs.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DataBloc extends Bloc<DataEvent, DataState> {
  DataBloc() : super(DataState(datamhs: [])) {
    on<AddData>(
      (event, emit) => emit(DataState(
          datamhs: List.of(state.datamhs)
            ..add(GetData(
                nama: event.nama, prodi: event.prodi, univ: event.univ)))),
    );
  }
}
