import 'package:basketball/team/increment_button.dart';
import 'package:basketball/team/team.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(List<String> args) {
  runApp(const PointsCounter());
}

class PointsCounter extends StatefulWidget {
  const PointsCounter({super.key});

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamApoints = 0;

  int teamBpoints = 0;

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
                image:
                    AssetImage("images/akshay-gill-qk03WPpOS-Q-unsplash.jpg"),
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
                      child: Column(
                        children: [
                          Team(name: "Team A", score: teamApoints),
                          IncrementButton(
                              increment: 1,
                              onPressed: () {
                                setState(() {
                                  teamApoints++;
                                });
                              }),
                          IncrementButton(
                              increment: 2,
                              onPressed: () {
                                setState(() {
                                  teamApoints += 2;
                                });
                              }),
                          IncrementButton(
                              increment: 3,
                              onPressed: () {
                                setState(() {
                                  teamApoints += 3;
                                });
                              }),
                        ],
                      ),
                    ),
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
                      child: Column(
                        children: [
                          Team(name: "Team B", score: teamBpoints),
                          IncrementButton(
                              increment: 1,
                              onPressed: () {
                                setState(() {
                                  teamBpoints++;
                                });
                              }),
                          IncrementButton(
                              increment: 2,
                              onPressed: () {
                                setState(() {
                                  teamBpoints += 2;
                                });
                              }),
                          IncrementButton(
                              increment: 3,
                              onPressed: () {
                                setState(() {
                                  teamBpoints += 3;
                                });
                              }),
                        ],
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      teamApoints = 0;
                      teamBpoints = 0;
                    });
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
