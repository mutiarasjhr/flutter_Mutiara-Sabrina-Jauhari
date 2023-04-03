import 'package:equatable/equatable.dart';

class KontakState extends Equatable {
  String name;
  String phoneNumber;

  KontakState(this.name, this.phoneNumber);

  @override
  List<Object?> get props => ["", ""];
}
