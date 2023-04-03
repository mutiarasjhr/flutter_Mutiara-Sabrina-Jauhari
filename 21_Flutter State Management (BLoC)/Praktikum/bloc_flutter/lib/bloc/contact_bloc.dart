import 'package:bloc_flutter/bloc/contact_event.dart';
import 'package:bloc_flutter/bloc/contact_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class KontakBloc extends Bloc<KontakEvent, KontakState> {
  KontakBloc() : super(KontakState("", "")) {
    on<Increment>(
        (event, emit) => emit(KontakState(state.name, state.phoneNumber)));

    on<Decrement>(
        (event, emit) => emit(KontakState(state.name, state.phoneNumber)));
  }
}
