import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';

class MobileVideoBackground extends StatefulWidget {
  const MobileVideoBackground({super.key});

  @override
  _VideoBackgroundState createState() => _VideoBackgroundState();
}

class _VideoBackgroundState extends State<MobileVideoBackground> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();

    // Initialize the video controller and set the video file path
    _controller = VideoPlayerController.network(
      'https://digitalassets.tesla.com/tesla-contents/video/upload/f_auto,q_auto/Homepage-Demo-Drive-Mobile-NA.mp4',
    );

    // Initialize the video player and set the source
    _initializeVideoPlayerFuture = _controller.initialize();

    // Set looping to true so that the video repeats
    _controller.setLooping(true);

    // Start playing the video
    _controller.play();
  }

  @override
  void dispose() {
    // Dispose of the video controller when the widget is removed from the widget tree
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        FutureBuilder(
          future: _initializeVideoPlayerFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              // If the video player has finished initializing, display the video
              return AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              );
            } else {
              // Otherwise, display a loading spinner
              return const CircularProgressIndicator();
            }
          },
        ),
        Column(
          children: [
            Column(
              children: [
                Center(
                  child: Text(
                    "Experience Tesla",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Center(
                  child: Text(
                    "Schedule a Demo Drive Today",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(
                  height: 500,
                ),
              ],
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 145),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                side: const BorderSide(
                  color: Colors.white,
                  width: 2,
                ),
              ),
              onPressed: () {},
              child: Text(
                "Demo Drive",
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 250,
            ),
          ],
        ),
      ],
    );
  }
}
