import 'package:flutter/material.dart';
import 'package:clone_gojek/core.dart';
import 'package:get/get.dart';

class DasbordView extends StatelessWidget {
  const DasbordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DasbordController>(
      init: DasbordController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            toolbarHeight: 110,
            backgroundColor: const Color(0xff00880F),
            actions: [
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.9,
                    padding: const EdgeInsets.all(16.0),
                    decoration: const BoxDecoration(
                      color: Color(0xff097210),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 30.0,
                          child: ListView.builder(
                            itemCount: controller.menuAtas.length,
                            scrollDirection: Axis.horizontal,
                            padding: EdgeInsets.zero,
                            clipBehavior: Clip.none,
                            itemBuilder: (context, index) {
                              var items = controller.menuAtas[index];
                              bool selected = controller.selectedIndex == index;
                              return Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      controller.updateIndex(index);
                                    },
                                    child: Container(
                                      height: 35,
                                      width: 75,
                                      decoration: BoxDecoration(
                                        color: selected
                                            ? Colors.white
                                            : Colors.transparent,
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(12.0),
                                        ),
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                        items['product_name'],
                                        style: TextStyle(
                                          fontSize: 13.0,
                                          color: selected
                                              ? const Color(0xff097210)
                                              : Colors.white,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
            ],
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  controller.currentView ?? const HomeView(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
