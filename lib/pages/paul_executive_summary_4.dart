import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class PaulExecutiveSummary4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    Container(
      decoration: BoxDecoration(
        color: Color(0xFF5CF659),
      ),
      child: Container(
        width: 1920,
        padding: EdgeInsets.fromLTRB(0, 467, 1, 497),
        child: Text(
          ' Screenshots of Design of Each Modules with Description:',
          textAlign: TextAlign.center,
          style: GoogleFonts.getFont(
            'Inter',
            fontWeight: FontWeight.w700,
            fontSize: 60,
            color: Color(0xFF000000),
          ),
        ),
      ),
    );
  }
}