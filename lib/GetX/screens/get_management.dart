import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getstatemanagement/GetX/screens/get_controller.dart';

class GetStatemanagement extends StatefulWidget {
  const GetStatemanagement({super.key});

  @override
  State<GetStatemanagement> createState() => _GetStatemanagementState();
}

class _GetStatemanagementState extends State<GetStatemanagement> {
  final storeController = Get.put(StoreController());

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
