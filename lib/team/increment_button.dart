import 'package:flutter/material.dart';

class IncrementButton extends StatefulWidget {
  final Function onPressed;
  final int increment;

  const IncrementButton(
      {super.key, required this.onPressed, required this.increment});

  @override
  State<IncrementButton> createState() => _IncrementButtonState();
}

class _IncrementButtonState extends State<IncrementButton> {
  @override
  Widget build(BuildContext context) {
    List<Icon> icons = List.generate(
      widget.increment,
      (index) => const Icon(
        Icons.sports_basketball_sharp,
        color: Color.fromARGB(255, 157, 91, 11),
      ),
    );
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          widget.onPressed();
        },
        child: Row(
          children: icons,
        ),
      ),
    );
  }
}
