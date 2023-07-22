import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeThirdSection extends StatelessWidget {
  const HomeThirdSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          "https://digitalassets.tesla.com/tesla-contents/image/upload/f_auto,q_auto/Homepage-Model-S-Desktop-LHD-6.22.jpg",
        ),
        Column(
          children: [
            const SizedBox(
              height: 150,
            ),
            Center(
              child: Text(
                "Model 3",
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 50,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Center(
              child: Text(
                "Starting at \$32,740",
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Center(
              child: Text(
                "After Federal Tax Credit",
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(
              height: 400,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: const ButtonStyle(
                      padding: MaterialStatePropertyAll(
                        EdgeInsets.symmetric(horizontal: 64, vertical: 17),
                      ),
                      backgroundColor: MaterialStatePropertyAll(Colors.white)),
                  onPressed: () {},
                  child: Text(
                    "Explore Inventory",
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      padding: const MaterialStatePropertyAll(
                        EdgeInsets.symmetric(horizontal: 64, vertical: 17),
                      ),
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.grey.shade700)),
                  onPressed: () {},
                  child: Text(
                    "Custom Order",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ],
        ),
        Column(
          children: [
            const SizedBox(
              height: 750,
            ),
            Center(
              child: Text(
                "3 months free Supercharging when you take delivery of a new Inventory vehicle by June 30",
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ],
        )
      ],
    );
  }
}
