import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/util/input_field.dart';
import 'package:video_player/video_player.dart';

class ClipsDescPage extends StatefulWidget {
  final File videoFile;
  final String videoPath;
  const ClipsDescPage({
    required this.videoFile,
    required this.videoPath,
  });

  @override
  State<ClipsDescPage> createState() => _ClipsDescPageState();
}

class _ClipsDescPageState extends State<ClipsDescPage> {
  late VideoPlayerController controller;
  TextEditingController songController = TextEditingController();
  TextEditingController captionController = TextEditingController();
  @override
  void initState(){
    super.initState();
    setState(() {
      controller = VideoPlayerController.file(widget.videoFile);
    });
    controller.initialize();
    controller.play();
    controller.setVolume(1);
    controller.setLooping(true);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width/1.5,
              child: VideoPlayer(controller),
            ),
            const SizedBox(height: 30,),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    width: MediaQuery.of(context).size.width -20,
                    child: TextInputField(
                      controler: songController,
                      labelText: 'Song Name',
                      icon: Icons.music_note,
                      ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    width: MediaQuery.of(context).size.width -20,
                    child: TextInputField(
                      controler: captionController,
                      labelText: 'Caption',
                      icon: Icons.closed_caption,
                      ),
                  ),
                  const SizedBox(height: 10,),
                  ElevatedButton(onPressed: (){}, 
                  child: const Text('Share!',
                  style: TextStyle(
                    fontSize: 20, 
                    color: Colors.white),
                  ))
                ],
              ),
            )
          ],
          ),
      ),
    );
  }
}