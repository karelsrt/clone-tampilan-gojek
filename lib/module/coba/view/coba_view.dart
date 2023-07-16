import 'package:flutter/material.dart';
import '../controller/coba_controller.dart';
import 'package:clone_gojek/core.dart';
import 'package:get/get.dart';

class CobaView extends StatelessWidget {
  const CobaView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CobaController>(
      init: CobaController(),
      builder: (controller) {
        controller.view = this;
        return Scaffold(
          appBar: AppBar(
            title: const Text("Dashboard"),
            actions: const [],
          ),
          body: Column(
            children: [
              const Text(
                "text",
                style: TextStyle(
                  fontSize: 17.0,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: HomeView(),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: ListView.builder(
                    itemCount: 100,
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) {
                      var item = {};
                      return Container(
                        margin: const EdgeInsets.all(10.0),
                        height: 100,
                        width: 100,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
