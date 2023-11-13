import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getstatemanagement/GetX/getx_controller.dart';

class StateManagement extends StatefulWidget {
  const StateManagement({super.key});

  @override
  State<StateManagement> createState() => _statemanagementState();
}

class _statemanagementState extends State<StateManagement> {
  final statecontroller = Get.put(StateController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("State Management"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<StateController>(builder: (statecontroller) {
              return Text(statecontroller.sum.toString());
            }),
            ElevatedButton(
                onPressed: () {
                  statecontroller.increment();
                },
                child: Text("increment"))
          ],
        ),
      ),
    );
  }
}
