part of 'internet_cubit.dart';

abstract class InternetState extends Equatable {
  const InternetState();
}

class InternetInitial extends InternetState {
  @override
  List<Object> get props => [];
}

class InternetLost extends InternetState {
  @override
  List<Object> get props => [];
}

class InternetGain extends InternetState {
  @override
  List<Object> get props => [];
}
