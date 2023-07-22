import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

class NavBarTest extends StatelessWidget {
  const NavBarTest({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: ((context, index) {
      return StickyHeader(
        header: Container(
          height: 50.0,
          color: Colors.blueGrey[700],
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          alignment: Alignment.centerLeft,
          child: Text(
            'Header #$index',
            style: const TextStyle(color: Colors.white),
          ),
        ),
        content: Container(
          child: Image.network(
            "https://digitalassets.tesla.com/tesla-contents/image/upload/f_auto,q_auto/Homepage-Model-S-Desktop-LHD-6.22.jpg",
            fit: BoxFit.cover,
            width: double.infinity,
            height: 200.0,
          ),
        ),
      );
    }));
  }
}
