// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:getstatemanagement/Bloc/bloc/products_bloc.dart';
// import 'package:getstatemanagement/Bloc/debug/app_observer.dart';
// import 'package:getstatemanagement/Bloc/repo/products_repo.dart';
// import 'package:getstatemanagement/Bloc/screens/home_screen.dart';
// import 'package:getstatemanagement/cubit/cubits/internet_cubit.dart';
// import 'package:getstatemanagement/cubit_Api/cubits/users_cubit.dart';
// import 'package:getstatemanagement/cubit_Api/repo/users_repo.dart';
// import 'package:getstatemanagement/practice_bloc/bloc/items_bloc.dart';
// import 'package:getstatemanagement/practice_bloc/repo/items_repo.dart';
// import 'package:getstatemanagement/practice_bloc/screens/home_screen.dart';
// import 'package:getstatemanagement/velocity_bloc/controller/todo_controller.dart';
// import 'package:getstatemanagement/velocity_bloc/repo/todo_repo.dart';
// import 'package:getstatemanagement/velocity_bloc/todo_screen.dart';
//
// void main() {
//   Bloc.observer = MyBlocObserver();
//   runApp(MultiRepositoryProvider(providers: [
//     RepositoryProvider(
//       create: (context) => ProductsRepo(),
//     ),
//     RepositoryProvider(
//       create: (context) => TodoRepo(),
//     ),
//     RepositoryProvider(
//       create: (context) => ItemsRepo(),
//     ),
//     RepositoryProvider(
//       create: (context) => UsersRepo(),
//     ),
//   ], child: const MyApp()));
// }
//
// //
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider(
//           create: (context) => ProductsBloc(ProductsRepo()),
//         ),
//         BlocProvider(create: (context) => ItemsBloc(ItemsRepo())),
//         BlocProvider(create: (context) => UsersCubit(UsersRepo())),
//         BlocProvider(create: (context) => InternetCubit()),
//       ],
//       child: const MaterialApp(
//         home: HomeScreen(),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getstatemanagement/GetX/screens/get_management.dart';

void main() {
  runApp(GetMaterialApp(
    home: GetStatemanagement(),
  ));
}
