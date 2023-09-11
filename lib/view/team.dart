import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Team extends StatelessWidget {
  final String? name;
  final int? points;
  const Team({
    super.key,
    required this.name,
    this.points,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Text(
            name!,
            style: GoogleFonts.bebasNeue(
              color: Colors.white,
              fontSize: (MediaQuery.of(context).size.width * 47) /
                  MediaQuery.of(context).size.width,
            ),
          ),
          AutoSizeText(
            "$points",
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
