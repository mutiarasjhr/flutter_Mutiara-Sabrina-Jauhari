import 'package:bloc_flutter/model/datamhs.dart';
import 'package:equatable/equatable.dart';

class DataState extends Equatable {
  final List<GetData> datamhs;

  const DataState({required this.datamhs});

  List<Object> get props => datamhs;
}
