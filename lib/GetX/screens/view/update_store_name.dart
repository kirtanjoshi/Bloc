import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getstatemanagement/GetX/screens/get_controller.dart';

class UpdateStoreName extends StatefulWidget {
  const UpdateStoreName({super.key});

  @override
  State<UpdateStoreName> createState() => _UpdateStoreNameState();
}

class _UpdateStoreNameState extends State<UpdateStoreName> {
  final storeController = Get.find<StoreController>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              TextField(
                controller: storeController.storeNameEditingController,
              ),
              ElevatedButton(
                  onPressed: () {
                    storeController.updateStoreName(
                        storeController.storeNameEditingController.text);
                    Get.snackbar("Updated",
                        "Store name has been updated : ${storeController.storeNameEditingController.text}",
                        snackPosition: SnackPosition.BOTTOM);
                  },
                  child: Center(
                    child: Text("Update"),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
