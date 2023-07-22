import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileNav extends StatelessWidget {
  const MobileNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(
            left: 8.0,
          ),
          child: Image.asset("assets/logo/tesla.png"),
        ),
        backgroundColor: const Color.fromARGB(0, 0, 0, 0),
        automaticallyImplyLeading: false,
        actions: [
          Builder(builder: (context) {
            return TextButton(
                onPressed: () => Scaffold.of(context).openEndDrawer(),
                child: Text(
                  "Menu",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ));
          })
        ],
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            const SizedBox(
              height: 70,
            ),
            ListTile(
              onTap: null,
              title: Text(
                "Model S",
                style: GoogleFonts.poppins(
                    color: Colors.grey.shade900, fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              onTap: null,
              title: Text(
                "Model 3",
                style: GoogleFonts.poppins(
                    color: Colors.grey.shade900, fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              onTap: null,
              title: Text(
                "Model X",
                style: GoogleFonts.poppins(
                    color: Colors.grey.shade900, fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              onTap: null,
              title: Text(
                "Model Y",
                style: GoogleFonts.poppins(
                    color: Colors.grey.shade900, fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              onTap: null,
              title: Text(
                "Solar Roof",
                style: GoogleFonts.poppins(
                    color: Colors.grey.shade900, fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              onTap: null,
              title: Text(
                "Solar Panels",
                style: GoogleFonts.poppins(
                    color: Colors.grey.shade900, fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              onTap: null,
              title: Text(
                "Powerwall",
                style: GoogleFonts.poppins(
                    color: Colors.grey.shade900, fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              onTap: null,
              title: Text(
                "Existing Inventory",
                style: GoogleFonts.poppins(
                    color: Colors.grey.shade900, fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              onTap: null,
              title: Text(
                "Used Inventory",
                style: GoogleFonts.poppins(
                    color: Colors.grey.shade900, fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              onTap: null,
              title: Text(
                "Trade-In",
                style: GoogleFonts.poppins(
                    color: Colors.grey.shade900, fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              onTap: null,
              title: Text(
                "Demo Drive",
                style: GoogleFonts.poppins(
                    color: Colors.grey.shade900, fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              onTap: null,
              title: Text(
                "Insurance",
                style: GoogleFonts.poppins(
                    color: Colors.grey.shade900, fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              onTap: null,
              title: Text(
                "Fleet",
                style: GoogleFonts.poppins(
                    color: Colors.grey.shade900, fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              onTap: null,
              title: Text(
                "Commercial Energy",
                style: GoogleFonts.poppins(
                    color: Colors.grey.shade900, fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              onTap: null,
              title: Text(
                "Utilities",
                style: GoogleFonts.poppins(
                    color: Colors.grey.shade900, fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              onTap: null,
              title: Text(
                "Charging",
                style: GoogleFonts.poppins(
                    color: Colors.grey.shade900, fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              onTap: null,
              title: Text(
                "Careers",
                style: GoogleFonts.poppins(
                    color: Colors.grey.shade900, fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              onTap: null,
              title: Text(
                "Find Us",
                style: GoogleFonts.poppins(
                    color: Colors.grey.shade900, fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              onTap: null,
              title: Text(
                "Events",
                style: GoogleFonts.poppins(
                    color: Colors.grey.shade900, fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              onTap: null,
              title: Text(
                "Support",
                style: GoogleFonts.poppins(
                    color: Colors.grey.shade900, fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              onTap: null,
              title: Text(
                "Investor Relation",
                style: GoogleFonts.poppins(
                    color: Colors.grey.shade900, fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              onTap: null,
              title: Text(
                "Shop",
                style: GoogleFonts.poppins(
                    color: Colors.grey.shade900, fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              onTap: null,
              title: Text(
                "Account",
                style: GoogleFonts.poppins(
                    color: Colors.grey.shade900, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
