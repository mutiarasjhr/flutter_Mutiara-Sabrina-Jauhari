import 'package:equatable/equatable.dart';

abstract class KontakEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class Increment extends KontakEvent {}

class Decrement extends KontakEvent {}
