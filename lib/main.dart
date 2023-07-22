import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tesla_site_template/responsive/responsive_layout.dart';
import 'package:tesla_site_template/views/desktop_homeview.dart';
import 'package:tesla_site_template/views/mobile_homeview.dart';
import 'package:tesla_site_template/views/tablet_homeview.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tesla Website',
      home: ResponsiveLayout(
        desktopBody: HomeView(),
        mobileBody: MobileHomeView(),
        tabletBody: TabletHomeView(),
      ),
    );
  }
}
