import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getstatemanagement/GetX/screens/get_controller.dart';

class AddFollowersCount extends StatelessWidget {
  const AddFollowersCount({super.key});

  @override
  Widget build(BuildContext context) {
    final storeController = Get.find<StoreController>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Followers Coun"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          storeController.updateFollowerCount();
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          children: [ 
            const Text(
            'You have add these many followers to your store',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 28),
          ),
            const SizedBox(
              height: 40.0,
            ),
            
            Obx(() => Text(storeController.followerCount.value.toString());)
          ],
        ),
      ),
    );
  }
}
