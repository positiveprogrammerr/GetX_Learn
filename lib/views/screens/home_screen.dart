import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controllers/home_controller.dart';
import 'package:getx/services/api_services.dart';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var apiServices = Get.find<ApiServices>();
  var homeController = Get.find<HomeController>();


  @override
  Widget build(BuildContext context) {
    apiServices.txt = 'Ken';
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  //  showDialog(context: context, builder: (context) => const AlertDialog(
                  //   title: Text('Hello'),
                  //  ),);
                Get.defaultDialog(title: 'Hello');
                },
                child: Text('Show Dialog')),
                   ElevatedButton(
                onPressed: () {
                  // Navigator.push(context, routeName)
                //  Get.toNamed('/details');
                // apiServices.getDataFromFirebase();
  Get.snackbar('Salom', 'I am Men',snackPosition: SnackPosition.BOTTOM);
                },
                child:  Text('Show Snackbar')),
          ],
        ),
      ),
    );
  }
}
