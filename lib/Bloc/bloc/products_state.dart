//Initisal state when app runs

part of 'products_bloc.dart';

@immutable
abstract class ProductsState {}

class ProductsInitial extends ProductsState {}

class ProductsLoadingState extends ProductsState {}

class ProductsLoadedState extends ProductsState {
  final List<Products> productsModel;
  ProductsLoadedState(this.productsModel);
  @override
  List<Object> get props => [productsModel];
}

class ProductsErrorState extends ProductsState {
  final String errorMessage;

  ProductsErrorState(this.errorMessage);
  @override
  List<Object> get props => [errorMessage];
}
