import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/const.dart';
import 'package:flutter_application_1/pages/clips_desc.dart';
import 'package:image_picker/image_picker.dart';

class UserHomePage extends StatelessWidget {
  const UserHomePage({super.key});

  pickVideo(ImageSource src, BuildContext context) async{
    final video = await ImagePicker().pickVideo(source:src);
    if (video != null){
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => ClipsDescPage(
          videoFile: File(video.path),
          videoPath: video.path,
        )
        )
        ,);
    }
  }
  showOptionsDialog(BuildContext context){
    return showDialog(context: context, builder: (context)=> SimpleDialog(
      children: [
        SimpleDialogOption(
          onPressed: () => pickVideo(ImageSource.gallery, context),
          child: Row(
            children: [
              Icon(Icons.image),
              Padding(
                padding: const EdgeInsets.all(7.0),
                child: Text('Gallery', style: TextStyle(fontSize: 20),),
              )
            ],),
        ),
        SimpleDialogOption(
          onPressed: () => pickVideo(ImageSource.camera, context),
          child: Row(
            children: [
              Icon(Icons.camera),
              Padding(
                padding: const EdgeInsets.all(7.0),
                child: Text('Camera', style: TextStyle(fontSize: 20),),
              )
            ],),
        ),
        SimpleDialogOption(
          onPressed: ()=> Navigator.of(context).pop(),
          child: Row(
            children: [
              Icon(Icons.cancel),
              Padding(
                padding: const EdgeInsets.all(7.0),
                child: Text('Cancel', style: TextStyle(fontSize: 20),),
              )
            ],),
        ),
      ],
    ),
    
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () =>showOptionsDialog(context),
          child: Container(
            width: 190,
            height: 50,
            decoration: BoxDecoration(
              color: buttonColor, 
              borderRadius: BorderRadius.circular(8),
              ),
            child: const Center(child: Text('Add Video', 
            style: TextStyle(
              fontSize: 20, 
              color: Colors.white, 
              fontWeight: FontWeight.bold),
              )
            ),
          ),
        ),
      ),
      
    );
  }
}