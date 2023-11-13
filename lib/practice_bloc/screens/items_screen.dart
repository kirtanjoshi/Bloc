import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getstatemanagement/practice_bloc/bloc/items_bloc.dart';

class ItemScreen extends StatefulWidget {
  const ItemScreen({super.key});

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ItemsBloc, ItemsState>(builder: (context, state) {
        if (state is ItemsLoadingState) {
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        } else if (state is ItemsLoadedState) {
          return ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: Text("hello"),
                );
              });
        } else if (state is ItemsErrorState) {
          return Center(
            child: Text(state.errormessage),
          );
        }
        return const SizedBox();
      }),
    );
  }
}
