import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getstatemanagement/Bloc/bloc/products_bloc.dart';
import 'package:velocity_x/velocity_x.dart';

class ConsumerScreen extends StatelessWidget {
  const ConsumerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductsBloc, ProductsState>(
      listener: (context, state) {
        if (state is ProductsLoadedState) {
          VxToast.show(context, msg: "Velocity x Loaded");
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text("Data Loaded")));
        } else {
          VxToast.show(context, msg: "Velocity x Not Loaded");
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text("Data UnLoaded")));
        }
      },
      builder: (context, state) {
        if (state is ProductsLoadingState) {
          return Center(
            child: CircularProgressIndicator.adaptive(),
          );
        } else if (state is ProductsLoadedState) {
          return ListView.builder(
              itemCount: state.productsModel.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Text(state.productsModel[index].title.toString()),
                );
              });
        } else if (state is ProductsErrorState) {
          return Center(
            child: Text(state.errorMessage),
          );
        }
        return SizedBox();
      },
    );
  }
}
