import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class BrowseCareer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Career Counseling Guidance'),
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              'assets/images/menu.png',
              width: 24,
              height: 30,
            ),
            onPressed: () {
              // Add onPressed action for menu icon
            },
          ),
          SizedBox(width: 58),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        color: Color(0xFFFFFFFF),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 26),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.6, vertical: 41),
              color: Color(0xFFFF0000),
              child: Text(
                'Career Resources',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w700,
                  fontSize: 30,
                  color: Color(0xFFFFFFFF),
                ),
              ),
            ),
            SizedBox(height: 34),
            _buildSection(
              'Resume & Cover Letter Tips',
              [
                'Top Tips for Writing a Marketing Resume',
                'Crafting an Effective Cover Letter',
                'Marketing Resume Examples'
              ],
            ),
            SizedBox(height: 20),
            _buildSection(
              'Videos & Podcasts',
              [
                'Podcast: Insights from Marketing Experts',
                'Video: Mastering Social Media Marketing',
                'Interviews with Marketing Leaders'
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String title, List<String> items) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xFFF2F2F2),
        boxShadow: [
          BoxShadow(
            color: Color(0x40000000),
            offset: Offset(0, 4),
            blurRadius: 2,
          ),
        ],
      ),
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w700,
              fontSize: 15,
              color: Color(0xFFFF0000),
            ),
          ),
          SizedBox(height: 11),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: items.map((item) {
              return Text(
                item,
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w500,
                  fontSize: 11,
                  color: Color(0xFF000000),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
