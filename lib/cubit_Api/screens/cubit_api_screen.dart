import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getstatemanagement/cubit_Api/cubits/users_cubit.dart';

class CubitApiScreen extends StatefulWidget {
  const CubitApiScreen({super.key});

  @override
  State<CubitApiScreen> createState() => _CubitApiScreenState();
}

class _CubitApiScreenState extends State<CubitApiScreen> {
  @override
  void initState() {
    context.read<UsersCubit>().onLoadProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<UsersCubit, UsersState>(
          builder: (context, state) {
            if (state is UsersLoadingState) {
              return Center(child: CircularProgressIndicator.adaptive());
            } else if (state is UsersLoadedState) {
              return ListView.builder(
                  itemCount: state.userModel.length,
                  itemBuilder: (context, index) {
                    return Text(state.userModel[index].email.toString());
                  });
            }
            return SizedBox();
          },
        ),
      ),
    );
  }
}
