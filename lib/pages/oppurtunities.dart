import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Opportunities extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(0, 92, 0, 121),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(),
            _buildSearchBar(),
            _buildInternshipListTitle(),
            _buildInternshipList(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 0, 13, 22),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildMenuAndTitle(),
          _buildHomeAndProfile(),
        ],
      ),
    );
  }

  Widget _buildMenuAndTitle() {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(0, 6, 12, 4),
          width: 24,
          height: 30,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.contain,
              image: AssetImage('assets/images/menu.png'),
            ),
          ),
        ),
        Text(
          'Internships\nOpportunities',
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w700,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  Widget _buildHomeAndProfile() {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 22, bottom: 12, right: 9),
          child: Text(
            'Home',
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w700,
              fontSize: 15,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(
          width: 58,
          height: 52,
          child: SvgPicture.asset(
            'assets/vectors/ellipse_82_x2.svg',
          ),
        ),
      ],
    );
  }

  Widget _buildSearchBar() {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
      padding: EdgeInsets.fromLTRB(22, 22, 22, 20),
      color: Color(0xFF808080),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSearchField(),
          _buildFilterOptions(),
        ],
      ),
    );
  }

  Widget _buildSearchField() {
    return Container(
      margin: EdgeInsets.only(bottom: 22),
      padding: EdgeInsets.symmetric(horizontal: 7, vertical: 9),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0x40000000),
            offset: Offset(0, 4),
            blurRadius: 2,
          ),
        ],
      ),
      child: Row(
        children: [
          SizedBox(
            width: 46,
            height: 35,
            child: SvgPicture.asset('assets/vectors/ellipse_61_x2.svg'),
          ),
          SizedBox(width: 10),
          Text(
            'Type something',
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w200,
              fontSize: 12,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFilterOptions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            _buildFilterOption('Title', 'assets/vectors/union_x2.svg'),
            SizedBox(width: 10),
            _buildFilterOption('Company', ''),
          ],
        ),
        _buildFilterOption('Filter', ''),
      ],
    );
  }

  Widget _buildFilterOption(String text, String svgPath) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          if (svgPath.isNotEmpty)
            SvgPicture.asset(svgPath, width: 20, height: 20),
          if (svgPath.isNotEmpty) SizedBox(width: 5),
          Text(
            text,
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInternshipListTitle() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22, vertical: 16),
      child: Text(
        'List of internships',
        style: GoogleFonts.montserrat(
          fontWeight: FontWeight.w700,
          fontSize: 13,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget _buildInternshipList() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 13),
      child: Column(
        children: [
          _buildInternshipItem(
            'assets/images/rectangle_292.png',
            'Student intern',
            'Sample company',
            'Quezon',
          ),
          SizedBox(height: 19),
          _buildInternshipItem(
            'assets/images/rectangle_2921.png',
            'Student intern',
            'Sample company',
            'Quezon',
          ),
          SizedBox(height: 19),
          _buildInternshipItem(
            'assets/images/rectangle_2922.png',
            'Student intern',
            'Sample company',
            'Quezon',
          ),
        ],
      ),
    );
  }

  Widget _buildInternshipItem(
    String imagePath,
    String title,
    String company,
    String location,
  ) {
    return Container(
      padding: EdgeInsets.all(11),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0x4D000000)),
        borderRadius: BorderRadius.circular(20),
        color: Color(0xFFF9F9F9),
        boxShadow: [
          BoxShadow(
            color: Color(0x40000000),
            offset: Offset(0, 4),
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(imagePath, width: 70, height: 59),
              SizedBox(width: 19),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    company,
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    location,
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.1, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                'View more',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
