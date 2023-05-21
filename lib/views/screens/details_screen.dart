import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/services/api_services.dart';

import '../../controllers/home_controller.dart';

// ignore: must_be_immutable
class DetailsScreen extends StatelessWidget {
   DetailsScreen({super.key});

  var apiServices = Get.find<ApiServices>(); 
  var homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
      ),
       body: Center(
        child: ElevatedButton(
            onPressed: () {
              print(apiServices.txt);
             Get.back();
            },
            child:  Text('${homeController.counter}')),
      ),
    );
  }
}