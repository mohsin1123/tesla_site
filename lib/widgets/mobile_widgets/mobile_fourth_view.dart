import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileFourthView extends StatelessWidget {
  const MobileFourthView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          "https://digitalassets.tesla.com/tesla-contents/image/upload/h_1700,w_800,c_fit,f_auto,q_auto:best/Homepage-Model-X-Mobile-LHD_001",
        ),
        Column(
          children: [
            const SizedBox(
              height: 150,
            ),
            Center(
              child: Text(
                "Model X",
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
            Column(
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
                  height: 15,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      padding: const MaterialStatePropertyAll(
                        EdgeInsets.symmetric(horizontal: 74, vertical: 17),
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
      ],
    );
  }
}
