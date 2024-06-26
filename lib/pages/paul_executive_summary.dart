import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class PaulExecutiveSummary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    Container(
      decoration: BoxDecoration(
        color: Color(0xFF5CF659),
      ),
      child: SizedBox(
        width: 1920,
        child: Container(
          padding: EdgeInsets.fromLTRB(100.4, 77.5, 103.5, 228.5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(3.1, 0, 0, 18),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    'Executive Summary:',
                    style: GoogleFonts.getFont(
                      'Montserrat',
                      fontWeight: FontWeight.w700,
                      fontSize: 60,
                      color: Color(0xFF000000),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 21),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'A. Career Center Office:',
                    style: GoogleFonts.getFont(
                      'Montserrat',
                      fontWeight: FontWeight.w700,
                      fontSize: 50,
                      color: Color(0xFF000000),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 1113.9, 37),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    'User Requirements:',
                    style: GoogleFonts.getFont(
                      'Montserrat',
                      fontWeight: FontWeight.w700,
                      fontSize: 40,
                      color: Color(0xFF000000),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(43.6, 0, 67.9, 29),
                child: Text(
                  '        a) The Career Center Office needs the ability to track and assess graduates' employability to ensure they are successful in their careers.
                     b) Access to data on workforce development is crucial for understanding industry trends and aligning graduates' skills with market demands.',
                  style: GoogleFonts.getFont(
                    'Montserrat',
                    fontWeight: FontWeight.w400,
                    fontSize: 40,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(70.4, 0, 70.4, 45),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'System Requirements:',
                    style: GoogleFonts.getFont(
                      'Montserrat',
                      fontWeight: FontWeight.w700,
                      fontSize: 40,
                      color: Color(0xFF000000),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(43.6, 0, 0, 0),
                child: Text(
                  '       a) Integration of a system to track graduates' employability and workforce development initiatives to monitor and enhance career outcomes.
                     b) Implementation of data analysis tools to assess the effectiveness of workforce development initiatives and make informed decisions.',
                  style: GoogleFonts.getFont(
                    'Montserrat',
                    fontWeight: FontWeight.w400,
                    fontSize: 40,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}