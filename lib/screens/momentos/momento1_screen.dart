import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Momento1Screen extends StatefulWidget {
  @override
  _Momento1ScreenState createState() => _Momento1ScreenState();
}

class _Momento1ScreenState extends State<Momento1Screen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/momento1.mp4')
      ..initialize().then((_) {
        // Una vez inicializado, comienza la reproducción del video
        _controller.play();
        // Actualiza el estado para reflejar los cambios en la UI
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aomine vs Kagami'),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: _controller.value.isInitialized
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  ),
                  SizedBox(height: 20),
                  // Controles de reproducción y volumen
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow),
                        onPressed: () {
                          setState(() {
                            if (_controller.value.isPlaying) {
                              _controller.pause();
                            } else {
                              _controller.play();
                            }
                          });
                        },
                      ),
                      SizedBox(width: 20),
                      Icon(Icons.volume_down),
                      Slider(
                        value: _controller.value.volume,
                        onChanged: (value) {
                          setState(() {
                            _controller.setVolume(value);
                          });
                        },
                        min: 0,
                        max: 1,
                      ),
                    ],
                  ),
                ],
              )
            : CircularProgressIndicator(),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
