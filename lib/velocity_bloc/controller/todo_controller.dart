import 'package:getstatemanagement/velocity_bloc/models/todo_model.dart';
import 'package:getstatemanagement/velocity_bloc/repo/todo_repo.dart';
import 'package:velocity_bloc/cubit/velocity_cubit/velocity_cubit.dart';

class ToDoViewModel {
  final TodoRepo todoRepo;
  ToDoViewModel(this.todoRepo);

  final VelocityBloc<TodoModel?> todoModelBloc = VelocityBloc<TodoModel?>(null);

  getTodo() async {
    try {
      var data = await todoRepo.getTodo();
      todoModelBloc.onUpdateData(data);
    } catch (e) {
      todoModelBloc.onFailedResponse(error: e.toString());
    }
  }
}
