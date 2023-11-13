part of 'items_bloc.dart';

abstract class ItemsEvent extends Equatable {
  const ItemsEvent();
  @override
  List<Object> get props => [];
}

class ItemsLoadedEvent extends Equatable {
  @override
  List<Object> get props => [];
}
