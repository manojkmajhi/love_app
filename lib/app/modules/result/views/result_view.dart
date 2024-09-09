import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/result_controller.dart';

class ResultView extends GetView<ResultController> {
  const ResultView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Result'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Run Away',
          style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.red,
              fontStyle: FontStyle.italic),
        ),
      ),
    );
  }
}
