import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getstatemanagement/cubit/cubits/internet_cubit.dart';

class InternetScreen extends StatelessWidget {
  const InternetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Center(
      child: BlocConsumer<InternetCubit, InternetState>(
          listener: (context, state) {
        if (state is InternetGain) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Internet connection established"),
              backgroundColor: Colors.black,
            ),
          );
        } else if (state is InternetLost) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text("Loss connection"),
            backgroundColor: Colors.black,
          ));
        }
      }, builder: (context, state) {
        if (state is InternetGain) {
          return const Text("Gain connection established");
        } else if (state is InternetLost) {
          return const Text("Loss connection established");
        }
        return const Text("Loading...");
      }),
    )));
  }
}
