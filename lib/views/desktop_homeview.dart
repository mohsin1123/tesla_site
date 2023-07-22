import 'package:flutter/material.dart';
import 'package:tesla_site_template/widgets/desktop_widgets/home_fifth_section.dart';
import 'package:tesla_site_template/widgets/desktop_widgets/home_fourth_section.dart';
import 'package:tesla_site_template/widgets/desktop_widgets/home_second_section.dart';
import 'package:tesla_site_template/widgets/desktop_widgets/home_third_section.dart';
import 'package:tesla_site_template/widgets/desktop_widgets/home_view_video.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            VideoBackground(),
            HomeSecondSection(),
            HomeThirdSection(),
            HomeFourthSection(),
            HomeFifthSection(),
          ],
        ),
      ),
    );
  }
}
