import 'package:equatable/equatable.dart';
import 'package:bloc_flutter/bloc/data_bloc.dart';

abstract class DataEvent extends Equatable {
  const DataEvent();

  // @override
  // List<Object?> get props => [];
}

class AddData extends DataEvent {
  final String nama;
  final String phone;
  final String prodi;
  final String univ;

  AddData(
      {required this.nama,
      required this.phone,
      required this.prodi,
      required this.univ});

  @override
  List<Object?> get props => [nama, phone, prodi, univ];
}
