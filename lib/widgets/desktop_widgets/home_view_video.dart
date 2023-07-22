import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tesla_site_template/widgets/desktop_widgets/nav_bar.dart';
import 'package:video_player/video_player.dart';

class VideoBackground extends StatefulWidget {
  const VideoBackground({super.key});

  @override
  _VideoBackgroundState createState() => _VideoBackgroundState();
}

class _VideoBackgroundState extends State<VideoBackground> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();

    // Initialize the video controller and set the video file path
    _controller = VideoPlayerController.network(
        'https://digitalassets.tesla.com/tesla-contents/video/upload/f_auto,q_auto/Homepage-Test_Drive-NA-Desktop.mp4');

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
      alignment: AlignmentDirectional.topCenter,
      children: [
        FutureBuilder(
          future: _initializeVideoPlayerFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              // If the video player has finished initializing, display the video
              return AspectRatio(
                aspectRatio: 16 / 9,
                child: VideoPlayer(_controller),
              );
            } else {
              // Otherwise, display a loading spinner
              return CircularProgressIndicator();
            }
          },
        ),
        const Center(
          child: NavBar(),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            Center(
              child: Text(
                "Experience Tesla",
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Center(
              child: Text(
                "Schedule a Demo Drive Today",
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(
              height: 400,
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 90),
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
            )
          ],
        ),
      ],
    );
  }
}

/**class HomeViewVideo extends StatefulWidget {
  const HomeViewVideo({super.key});

  @override
  State<HomeViewVideo> createState() => _HomeViewVideoState();
}

class _HomeViewVideoState extends State<HomeViewVideo> {
  //initializing video player
  final VideoPlayerController videoplayerController = VideoPlayerController.network(
      "https://digitalassets.tesla.com/tesla-contents/video/upload/f_auto,q_auto/Homepage-Test_Drive-NA-Desktop.mp4");

  ChewieController? chewieController;

  //creating a init state where all the functionality will be initialized

  @override
  void initState() {
    chewieController = ChewieController(
      videoPlayerController: videoplayerController,
      aspectRatio: videoplayerController.value.aspectRatio,
      autoPlay: true,
      looping: true,
      autoInitialize: true,
      showControls: false,
    );
    super.initState();
  }

  @override
  void dispose() {
    videoplayerController.dispose();
    chewieController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Chewie(
        controller: chewieController!,
      ),
    );
  }
} **/
