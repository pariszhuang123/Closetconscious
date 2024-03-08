import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ImageUploadWidget extends StatefulWidget {
  @override
  _ImageUploadWidgetState createState() => _ImageUploadWidgetState();
}

class _ImageUploadWidgetState extends State<ImageUploadWidget> {
  XFile? _image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        ImagePicker picker = ImagePicker();
        XFile? image = await picker.pickImage(source: ImageSource.gallery);
        if (image != null) {
          setState(() {
            _image = image;
          });
        }
      },
      child: Container(
        height: 200,
        width: double.infinity,
        color: Colors.grey,
        child: Center(
          child: _image == null
              ? Text(
                  'Tap to upload',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )
              : Image.file(File(_image!.path)),
        ),
      ),
    );
  }
}
