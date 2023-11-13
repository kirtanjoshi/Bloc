import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getstatemanagement/Bloc/bloc/products_bloc.dart';
import 'package:getstatemanagement/Bloc/types/bloc_consumer.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  void initState() {
    context.read<ProductsBloc>().add(ProductsLoadedEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // body: BlocBuilder<ProductsBloc, ProductsState>(builder: (context, state) {
        //   if (state is ProductsLoadingState) {
        //     return Center(
        //       child: CircularProgressIndicator.adaptive(),
        //     );
        //   } else if (state is ProductsLoadedState) {
        //     return ListView.builder(
        //         itemCount: state.productsModel.length,
        //         itemBuilder: (context, index) {
        //           return ListTile(
        //             leading: Text(state.productsModel[index].title.toString()),
        //           );
        //         });
        //   } else if (state is ProductsErrorState) {
        //     return Center(
        //       child: Text(state.errorMessage),
        //     );
        //   }
        //   return SizedBox();
        // }),

        ///if internet is not available then use r listener
        // body: BlocListeners(),

        ///Hadels both listener and builder

        body: ConsumerScreen());
  }
}
