import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getstatemanagement/Bloc/bloc/products_bloc.dart';
import 'package:getstatemanagement/Bloc/debug/app_observer.dart';
import 'package:getstatemanagement/Bloc/repo/products_repo.dart';
import 'package:getstatemanagement/Bloc/screens/home_screen.dart';
import 'package:getstatemanagement/practice_bloc/bloc/items_bloc.dart';
import 'package:getstatemanagement/practice_bloc/repo/items_repo.dart';
import 'package:getstatemanagement/practice_bloc/screens/home_screen.dart';
import 'package:getstatemanagement/velocity_bloc/controller/todo_controller.dart';
import 'package:getstatemanagement/velocity_bloc/repo/todo_repo.dart';
import 'package:getstatemanagement/velocity_bloc/todo_screen.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(MultiRepositoryProvider(providers: [
    // RepositoryProvider(
    //   create: (context) => ProductsRepo(),
    // ),
    // RepositoryProvider(
    //   create: (context) => TodoRepo(),
    // ),
    RepositoryProvider(
      create: (context) => ItemsRepo(),
    ),
  ], child: const MyApp()));
}

//
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // BlocProvider(
        //   create: (context) => ProductsBloc(ProductsRepo()),
        // ),
        BlocProvider(create: (context) => ItemsBloc(ItemsRepo())),
      ],
      child: const MaterialApp(
        home: HomeScreen2(),
      ),
    );
  }
}
