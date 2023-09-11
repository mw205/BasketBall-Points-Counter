import 'package:basketball/controller/team_controller.dart';
import 'package:basketball/view/increment_button.dart';
import 'package:basketball/view/team.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PointsCounter extends StatefulWidget {
  const PointsCounter({super.key});

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  late TeamControllerA controllerA;
  late TeamControllerB controllerB;
  @override
  void initState() {
    super.initState();
    controllerA = Get.put(TeamControllerA());
    controllerB = Get.put(TeamControllerB());
  }

  void resetPoints() {
    controllerA.reset();
    controllerB.reset();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: "NunitoSans",
          useMaterial3: true,
          elevatedButtonTheme: const ElevatedButtonThemeData(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll<Color>(Colors.orange)))),
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          leading: const Icon(
            Icons.sports_basketball_sharp,
            color: Colors.white,
          ),
          title: const Text(
            "Basketball Counter",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage("https://i.ibb.co/WBCfMtB/basketball.jpg"),
                fit: BoxFit.cover,
                opacity: 0.20),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16, top: 35),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(8),
                        child: GetBuilder(
                          init: controllerA,
                          builder: (controller) => Column(
                            children: [
                              Team(
                                name: "Team A",
                                points: controller.points,
                              ),
                              IncrementButton(
                                  increment: 1,
                                  onPressed: () {
                                    controller.addOne();
                                  }),
                              IncrementButton(
                                  increment: 2,
                                  onPressed: () {
                                    controller.addTwo();
                                  }),
                              IncrementButton(
                                  increment: 3,
                                  onPressed: () {
                                    controller.addThree();
                                  }),
                            ],
                          ),
                        )),
                    const SizedBox(
                      height: 400,
                      child: VerticalDivider(
                        width: 5,
                        thickness: 0.5,
                        color: Color.fromARGB(152, 255, 255, 255),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GetBuilder<TeamControllerB>(
                        init: controllerB,
                        builder: (controller) => Column(
                          children: [
                            Team(
                              name: "Team B",
                              points: controller.points,
                            ),
                            IncrementButton(
                                increment: 1,
                                onPressed: () {
                                  controller.addOne();
                                }),
                            IncrementButton(
                                increment: 2,
                                onPressed: () {
                                  controller.addTwo();
                                }),
                            IncrementButton(
                                increment: 3,
                                onPressed: () {
                                  controller.addThree();
                                }),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    resetPoints();
                  },
                  child: const Text(
                    "Reset",
                    style: TextStyle(
                        color: Color.fromARGB(255, 157, 91, 11),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
