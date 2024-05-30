import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ScheduleAppointment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
          ),
          padding: EdgeInsets.fromLTRB(0, 93, 0, 20), // Adjusted bottom padding
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(9, 0, 20, 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 13, 14, 5),
                          child: Image.asset(
                            'assets/images/menu.png',
                            width: 24,
                            height: 30,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Text(
                          'Career Counseling Guidance',
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: Color(0xFF000000),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 26, 1, 8),
                          child: Text(
                            'Home',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 58,
                          height: 52,
                          child: SvgPicture.asset(
                            'assets/vectors/ellipse_10_x2.svg',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20), // Adjusted bottom margin
                color: Color(0xFFFF0000),
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 19),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF000000)),
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFF2F2F2),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xB2000000),
                      offset: Offset(0, 4),
                      blurRadius: 2,
                    ),
                  ],
                ),
                padding: EdgeInsets.fromLTRB(0, 55, 0, 47),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        'Appointment Date:',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w300,
                          fontSize: 16,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 28),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFF000000)),
                        color: Color(0xFFFFFFFF),
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      width: 297,
                      child: Text(
                        'mm / dd / yyyy',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 23),
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        'Appointment Topic:',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w300,
                          fontSize: 16,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 64),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFF000000)),
                        color: Color(0xFFFFFFFF),
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      width: 297,
                      child: Text(
                        'Select a Topic',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0x4D000000)),
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFFFF0000),
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 14, horizontal: 20),
                      child: Text(
                        'Send appointment',
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          color: Color(0xFFFFFBFB),
                        ),
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
