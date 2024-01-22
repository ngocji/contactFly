import 'package:chewie/chewie.dart';
import 'package:flutter_common/flutter_common.dart';
import 'package:flutter_widget/flutter_widget.dart';
import 'package:video_player/video_player.dart';

import '../common_components/common_component_screen.dart';
import '../login/login_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = '/splashScreen';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late VideoPlayerController controller;
  late ChewieController _chewieController;
  late double width, height;

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset(
      Assets.icons.splashVideo, package: 'flutter_common',
      videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true),
    );
    controller.addListener(() {
      if(controller.value.isInitialized && controller.value.position == controller.value.duration) {
        Navigator.of(context).popAndPushNamed(LoginScreen.routeName);
      }
      setState(() {

      });
    });
    _chewieController = ChewieController(
      showOptions: false,
      fullScreenByDefault: false,
      videoPlayerController: controller,
      // Adjust as needed
      autoPlay: true,
      allowFullScreen: false,
      looping: false,
      showControls: false,
      showControlsOnInitialize: false,

    );
  }

  @override
  void dispose() {
    controller.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height,
              child: controller.value.isInitialized
                  ? Chewie(
                    controller: _chewieController,
                  )
                  : AppLoading.centerLoading(
                height: 24,
              )),
        ],
      ),
    );
  }
}
