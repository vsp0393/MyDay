import 'dart:async';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:myday/LoginScreen.dart';


class GetStartedScreen extends StatefulWidget {
  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  late VideoPlayerController _videoPlayerController;
  bool _visible = false;

  @override
  void initState() {
    super.initState();
    _videoPlayerController =
        VideoPlayerController.asset("assets/video/video_bg_getstart.mp4");
    _videoPlayerController.initialize().then((_) {
      _videoPlayerController.setLooping(true);
      Timer(Duration(milliseconds: 100), () {
        setState(() {
          _videoPlayerController.setVolume(0.0);
          _videoPlayerController.play();
          _visible = true;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: <Widget>[_getVideoBackground(), _getButtonOverlay()],
        ),
      ),
    );
  }

  _getVideoBackground() {
    return AnimatedOpacity(
      opacity: _visible ? 1.0 : 0.0,
      duration: Duration(milliseconds: 1000),
      child: VideoPlayer(_videoPlayerController),
    );
  }

  _getButtonOverlay() {
    return Container(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(bottom: 150.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
                height: 400,
                width: MediaQuery.of(context).size.width,
                child:IconButton(
                  icon: Image.asset(
                    "assets/icons/app_icon_get_start.png",
                  ),
                  onPressed: () {
                  },
                )
            ),
              Text('Lets Start',
                style: TextStyle(
                  fontFamily: 'Bold',
                  // Replace 'YourFontFamily' with the desired font family
                  fontSize: 24,
                  color: Colors.white,
                ),),
            Container(
              height: 70,
              width: 70,
              child:IconButton(
                icon: Image.asset(
                  "assets/icons/icon_next.png",
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                  );
                  },
              ) /*ElevatedButton.icon(
                onPressed: () {
                  // Add your button press logic here
                  print('Button Pressed!');
                },
                icon: Image.asset(
                  "assets/icons/icon_next.png",
                  height: 40.0,width: 40.0,
                ),
                label: Text(''),
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  onPrimary: Colors.white,
                  padding: EdgeInsets.all(0), // Remove padding to ensure the button fits within the Container
                  shape: CircleBorder(),
                ),
              ),*/
            ),
          ],
        ),
      ),
    );
  }
}
