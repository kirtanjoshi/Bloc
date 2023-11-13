import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getstatemanagement/Bloc/bloc/products_bloc.dart';
import 'package:velocity_x/velocity_x.dart';

// If there is no internet connection then thid the method to show that error message

class BlocListeners extends StatefulWidget {
  const BlocListeners({super.key});

  @override
  State<BlocListeners> createState() => _BlocListenersState();
}

class _BlocListenersState extends State<BlocListeners> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<ProductsBloc, ProductsState>(
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
      child: Center(child: Text("Block Listener")),
    );
  }
}
