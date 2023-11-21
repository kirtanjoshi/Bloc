import 'package:flutter/material.dart';
import 'package:getstatemanagement/Bloc/screens/produvt_screen.dart';
import 'package:getstatemanagement/cubit/internet_screen.dart';
import 'package:getstatemanagement/cubit_Api/screens/cubit_api_screen.dart';
import 'package:getstatemanagement/practice_bloc/screens/home_screen.dart';
import 'package:getstatemanagement/velocity_bloc/todo_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProductScreen()));
                },
                child: Text("Products")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ToDoScreen()));
                },
                child: Text("TODO")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen2()));
                },
                child: Text("HomeScreen2")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => InternetScreen()));
                },
                child: Text("Cubit")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CubitApiScreen()));
                },
                child: Text("CubitApiScreen")),
          ],
        ),
      ),
    );
  }
}
