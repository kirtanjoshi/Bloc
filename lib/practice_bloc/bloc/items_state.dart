part of 'items_bloc.dart';

abstract class ItemsState {}

class ItemsInitial extends ItemsState {}

class ItemsLoadingState extends ItemsState {}

class ItemsLoadedState extends ItemsState {
  late final Todo todomodel;
  ItemsLoadedState(this.todomodel);
  @override
  List<Object> get props => [todomodel];
}

class ItemsErrorState extends ItemsState {
  final String errormessage;
  ItemsErrorState(this.errormessage);
  @override
  List<Object> get props => [errormessage];
}
