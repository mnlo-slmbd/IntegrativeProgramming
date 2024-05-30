import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class PaulExecutiveSummary3 extends StatelessWidget {
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
          padding: EdgeInsets.fromLTRB(47, 82.5, 108.3, 119),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(60.3, 0, 0, 119.5),
                child: Text(
                  'Objectives:',
                  style: GoogleFonts.getFont(
                    'Inter',
                    fontWeight: FontWeight.w700,
                    fontSize: 60,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
              RichText(
                text: TextSpan(
                  style: GoogleFonts.getFont(
                    'Montserrat',
                    fontWeight: FontWeight.w400,
                    fontSize: 40,
                    color: Color(0xFF000000),
                  ),
                  children: [
                    TextSpan(
                      text: 'Career Center Office:
              ',
                      style: GoogleFonts.getFont(
                        'Montserrat',
                        fontWeight: FontWeight.w600,
                        fontSize: 40,
                        height: 1.3,
                      ),
                    ),
                    TextSpan(
                      text: '             Provide access to data on workforce development for a comprehensive understanding of industry trends.
                           Integrate a system for tracking graduates' employability and workforce development progress.
                           Implement data analysis tools to assess the success of workforce development initiatives.
              ',
                    ),
                    TextSpan(
                      text: 'College Deans:
              ',
                      style: GoogleFonts.getFont(
                        'Montserrat',
                        fontWeight: FontWeight.w600,
                        fontSize: 40,
                        height: 1.3,
                      ),
                    ),
                    TextSpan(
                      text: '             Enable access to data on alumni engagement and success for informed decision-making.
                           Develop a module for College Deans to access alumni engagement and success data.
                           Implement analytics tools to guide program improvement strategies based on alumni outcomes.
              ',
                      style: GoogleFonts.getFont(
                        'Montserrat',
                        fontWeight: FontWeight.w400,
                        fontSize: 40,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}