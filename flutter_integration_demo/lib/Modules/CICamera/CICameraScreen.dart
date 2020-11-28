import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class CICameraScreen extends StatefulWidget {

  @override
  _CICameraScreenState createState() => _CICameraScreenState();
}

class _CICameraScreenState extends State<CICameraScreen> {
  File _image;
  final picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Camera'),
        backgroundColor: Color(0xFF444444),
      ),
      body: Center(
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _image == null
                ? Text('No image selected.')
                : Image.file(_image),
            FlatButton(
                onPressed: getImage
                , child: Text("Take Photo"),color: Colors.amberAccent
            )

          ],),
      ),
    );
  }

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {

          _image = File(pickedFile.path);



      } else {
        print('No image selected.');
      }
    });
  }
}