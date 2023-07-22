import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeFifthSection extends StatelessWidget {
  const HomeFifthSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          "https://digitalassets.tesla.com/tesla-contents/image/upload/h_1800,w_2880,c_fit,f_auto,q_auto:best/425_HP_SolarPanels_D",
        ),
        Column(
          children: [
            const SizedBox(
              height: 150,
            ),
            Center(
              child: Text(
                "Solar Panels",
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 50,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Center(
              child: Text(
                "Schedule a Virtual Consultation",
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
                    "Order Now",
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
                    "Learn More",
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
      ],
    );
  }
}
