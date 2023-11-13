import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:getstatemanagement/Bloc/models/product_model.dart';
import 'package:getstatemanagement/Bloc/repo/products_repo.dart';
import 'package:meta/meta.dart';

part 'products_event.dart';
part 'products_state.dart';

class ProductsBloc extends Bloc<ProductsLoadedEvent, ProductsState> {
  final ProductsRepo productRepo;
  ProductsBloc(this.productRepo) : super(ProductsLoadingState()) {
    on<ProductsLoadedEvent>((event, emit) async {
      try {
        emit(ProductsLoadingState());
        var data = await productRepo.getProducts();
        emit(ProductsLoadedState(data));
      } catch (e) {
        emit(ProductsErrorState(e.toString()));
      }
    });
  }
}
