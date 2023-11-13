import 'package:get/get.dart';

class StateController extends GetxController {
  int b = 8;
  int c = 9;
  int d = 0;
  int get sum => d;

  void increment() {
    d = b + c;
  }
}

//
//
// //
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(SimpleTodoApp());
// }
//
// class SimpleTodoApp extends StatefulWidget {
//   @override
//   _SimpleTodoAppState createState() => _SimpleTodoAppState();
// }
//
// class _SimpleTodoAppState extends State<SimpleTodoApp> {
//   List<String> tasks = [];
//
//   void _addTask(String task) {
//     setState(() {
//       tasks.add(task);
//     });
//   }
//
//   Widget _buildTaskList() {
//     return ListView.builder(
//       itemCount: tasks.length,
//       itemBuilder: (context, index) {
//         return ListTile(
//           title: Text(tasks[index]),
//         );
//       },
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Simple TODO App'),
//         ),
//         body: _buildTaskList(),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             _showAddTaskDialog();
//           },
//           child: Icon(Icons.add),
//         ),
//       ),
//     );
//   }
//
//   void _showAddTaskDialog() {
//     String newTaskTitle = '';
//
//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: Text('Add Task'),
//           content: TextField(
//             onChanged: (value) {
//               newTaskTitle = value;
//             },
//           ),
//           actions: [
//             ElevatedButton(
//               onPressed: () {
//                 _addTask(newTaskTitle);
//                 Navigator.pop(context);
//               },
//               child: Text('Add'),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
