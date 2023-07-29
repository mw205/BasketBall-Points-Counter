import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Team extends StatefulWidget {
  final String? name;
  final int? score;

  const Team({super.key, required this.name, required this.score});

  @override
  State<Team> createState() => _TeamState();
}

class _TeamState extends State<Team> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width *
          160 /
          MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height *
          290 /
          MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Text(
            widget.name!,
            style: GoogleFonts.bebasNeue(
              color: Colors.white,
              fontSize: (MediaQuery.of(context).size.width * 47) /
                  MediaQuery.of(context).size.width,
            ),
          ),
          AutoSizeText(
            "${widget.score}",
            maxFontSize: 160,
            minFontSize: 130,
            style: const TextStyle(
              fontFamily: "BebasNeue",
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
