import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:resume/constants/index.dart';

class LeftSideNavBar extends StatelessWidget {
  const LeftSideNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * AppConstants.sizeOfLeftSideNavBar,
      child: Material(
        elevation: AppConstants.leftSideNavBarElevation,
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              buildProfileCard(),
              buildSkillsCard(),
              buildSocialMediaLinks()
            ],
          ),
        ),
      ),
    );
  }

  Widget buildProfileCard() {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const CircleAvatar(
              radius: AppConstants.circleAvatarRadius,
              backgroundImage: AssetImage(AssetPath.profileImage),
            ),
            const SizedBox(height: 14),
            Text(
              'Yusuf Abdallah',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: const Color(0xFF1E1E28)),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 14),
            Text(
              'Mobile Developer',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                color: const Color(0xFF5C5C6F),
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 3),
            Text(
              'A Developer Who Writes',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                color: const Color(0xFF5C5C6F),
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSkillsCard() {
    return Expanded(
        child: Container(
      color: const Color(0xFFf4f4f6),
      child: ListView(
        children: [
          buildAdressList(),
          buildLanguagesList(),
          buildKnowledgeList(),
          buildDownloadButton()
        ],
      ),
    ));
  }

  Widget buildRowInAddressList(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Text(
            label,
            style: GoogleFonts.poppins(
                fontSize: 13, color: const Color(0xFF1E1E28)),
            overflow: TextOverflow.clip,
          ),
        ),
        Flexible(
          child: Text(
            value,
            style: GoogleFonts.poppins(
                fontSize: 13, color: const Color(0xFF5C5C6F)),
            overflow: TextOverflow.clip,
          ),
        ),
      ],
    );
  }

  Widget buildAdressList() {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildRowInAddressList('Residence:', 'Tanzania'),
          buildRowInAddressList('City:', 'Dar es Salaam'),
          buildRowInAddressList('Age:', '21'),
          const SizedBox(height: 8),
          const Divider()
        ],
      ),
    );
  }

  Widget buildLanguagesList() {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildColumnInLanguageList('English'),
              buildColumnInLanguageList('Swahili'),
              buildColumnInLanguageList('Arabic'),
            ],
          ),
          const SizedBox(height: 8),
          const Divider()
        ],
      ),
    );
  }

  Widget buildColumnInLanguageList(String value) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.check_circle_outline,
          size: 40,
          color: Color(0xFFf46258),
        ),
        const SizedBox(height: 10),
        Text(
          value,
          style:
              GoogleFonts.poppins(fontSize: 13, color: const Color(0xFF1E1E28)),
          overflow: TextOverflow.clip,
        ),
      ],
    );
  }

  Widget buildRowInKnowledgeList(String value) {
    return Row(
      children: [
        const Icon(
          Icons.check,
          size: 12,
          color: Color(0xFFf46258),
        ),
        const SizedBox(width: 10),
        Text(
          value,
          style: GoogleFonts.poppins(
            fontSize: 13,
            color: const Color(0xFF5C5C6F),
          ),
          overflow: TextOverflow.clip,
        ),
      ],
    );
  }

  Widget buildKnowledgeList() {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildRowInKnowledgeList('Flutter and Dart'),
          buildRowInKnowledgeList('Django and Python'),
          buildRowInKnowledgeList('Firebase'),
          buildRowInKnowledgeList('GIT Knowledge'),
          const SizedBox(height: 8),
          const Divider()
        ],
      ),
    );
  }

  Widget buildDownloadButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () {},
            child: Row(
              children: [
                Text(
                  'DOWNLOAD CV',
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF5C5C6F),
                  ),
                ),
                const SizedBox(width: 10),
                const Icon(
                  Icons.download,
                  size: 18,
                  color: Color(0xFF5C5C6F),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  buildSocialMediaButton(void Function() onPressed, IconData icon) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        icon,
        size: 16,
        color: const Color(0xFF5C5C6F),
      ),
    );
  }

  Widget buildSocialMediaLinks(){
    return Container(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildSocialMediaButton(() { }, Icons.facebook),
          buildSocialMediaButton(() { }, Icons.facebook),
          buildSocialMediaButton(() { }, Icons.facebook),
        ],
      ),
    );
  }
}
