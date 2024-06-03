import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class ImagepickerScreen extends StatefulWidget {
  const ImagepickerScreen({Key? key}) : super(key: key);

  @override
  State<ImagepickerScreen> createState() => _ImagepickerScreenState();
}

class _ImagepickerScreenState extends State<ImagepickerScreen> {
  @override
  File? imageFile;
  final _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Picker'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: const Color(0xffEBDDFF),
                  elevation: 10,
                  child: IconButton(
                    icon: const Icon(
                      Icons.photo_camera,
                    ),
                    onPressed: () async {
                      final pickedFile =
                          await _picker.pickImage(source: ImageSource.camera);
                      if (pickedFile != null) {
                        setState(() => imageFile = File(pickedFile.path));
                      }
                    },
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: const Color(0xffEBDDFF),
                  elevation: 10,
                  child: IconButton(
                    icon: const Icon(Icons.photo),
                    onPressed: () async {
                      final pickedFile =
                          await _picker.pickImage(source: ImageSource.gallery);
                      if (pickedFile != null) {
                        setState(() => imageFile = File(pickedFile.path));
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          if (imageFile == null)
            const Center(
                child: Text(
              'Click Camera or Gallery button',
              style: TextStyle(fontWeight: FontWeight.bold),
            ))
          else
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Image.file(imageFile!),
            ),
        ],
      ),
    );
  }
}
