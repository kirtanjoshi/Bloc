import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getstatemanagement/velocity_bloc/controller/todo_controller.dart';
import 'package:getstatemanagement/velocity_bloc/models/todo_model.dart';
import 'package:getstatemanagement/velocity_bloc/repo/todo_repo.dart';
import 'package:velocity_bloc/cubit/velocity_cubit/velocity_cubit.dart';

class ToDoScreen extends StatefulWidget {
  const ToDoScreen({super.key});

  @override
  State<ToDoScreen> createState() => _ToDoScreenState();
}

class _ToDoScreenState extends State<ToDoScreen> {
  late ToDoViewModel toDoViewModel;

  @override
  void initState() {
    // TODO: implement initState

    toDoViewModel = ToDoViewModel(context.read<TodoRepo>());
    toDoViewModel.getTodo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo Screen"),
      ),
      body: BlocBuilder<VelocityBloc<TodoModel?>, VelocityState<TodoModel?>>(
        bloc: toDoViewModel.todoModelBloc,
        builder: (context, state) {
          if (state is VelocityInitialState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is VelocityUpdateState) {
            return ListView.builder(
              itemCount: state.data!.todos!.length,
              itemBuilder: (context, index) {
                var todoData = state.data!.todos![index];
                return ListTile(
                  title: Text(todoData.todo.toString()),
                );
              },
            );
          } else if (state is VelocityFailedState) {
            return const Center(
              child: Text("Failed"),
            );
          }
          return const Center(child: Text("Error"));
        },
      ),
    );
  }
}
