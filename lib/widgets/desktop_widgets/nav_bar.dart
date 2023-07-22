import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        child: Row(
          children: [
            const SizedBox(
              width: 50,
            ),
            SizedBox(
              width: 100,
              height: 50,
              child: Image.asset("assets/logo/tesla.png"),
            ),
            const SizedBox(
              width: 100,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                Navbaritem("Model S"),
                SizedBox(
                  width: 25,
                ),
                Navbaritem("Model 3"),
                SizedBox(
                  width: 25,
                ),
                Navbaritem("Model X"),
                SizedBox(
                  width: 25,
                ),
                Navbaritem("Model Y"),
                SizedBox(
                  width: 25,
                ),
                Navbaritem("Solar Roof"),
                SizedBox(
                  width: 25,
                ),
                Navbaritem("Solar Panels"),
                SizedBox(
                  width: 25,
                ),
                Navbaritem("Powerwall"),
                SizedBox(
                  width: 100,
                ),
                Navbaritem("Shop"),
                SizedBox(
                  width: 25,
                ),
                Navbaritem("Account"),
                SizedBox(
                  width: 25,
                ),
                Navbaritem("Menu"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Navbaritem extends StatelessWidget {
  final String title;
  const Navbaritem(this.title);
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (() {}),
      child: Text(
        title,
        style: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 13,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
