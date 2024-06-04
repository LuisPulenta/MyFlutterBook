import 'package:flutter/material.dart';
import 'package:extended_image/extended_image.dart';

class ExtendedimageScreen extends StatefulWidget {
  const ExtendedimageScreen({Key? key}) : super(key: key);

  @override
  State<ExtendedimageScreen> createState() => _ExtendedimageScreenState();
}

class _ExtendedimageScreenState extends State<ExtendedimageScreen> {
  final GlobalKey<ExtendedImageEditorState> _imageeditorKey =
      GlobalKey<ExtendedImageEditorState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Extended Image'),
        centerTitle: true,
      ),
      body: ExtendedImage.asset(
        'assets/logo.png',
        fit: BoxFit.contain,
        mode: ExtendedImageMode.editor,
        extendedImageEditorKey: _imageeditorKey,
        initEditorConfigHandler: (state) {
          return EditorConfig(
            maxScale: 7.0,
          );
        },
      ),
      bottomNavigationBar: Card(
        elevation: 10,
        margin: const EdgeInsets.only(top: 10),
        color: const Color(0xffF7F2F9),
        shape: const RoundedRectangleBorder(
            // borderRadius: BorderRadius.circular(15.0),
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        )),
        child: ButtonBar(
          children: [
            ElevatedButton(
              onPressed: () =>
                  _imageeditorKey.currentState?.rotate(right: false),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                backgroundColor: const Color(0xffF7F2F9),
              ),
              child: Wrap(
                // spacing: 5.0, // gap between adjacent chips
                // runSpacing: 5.0, // gap between lines
                children: const [
                  Icon(
                    Icons.rotate_left,
                    color: Color(0xff640094),
                    // size: 24.0,
                  ),
                  // SizedBox(
                  //   width:5,
                  // ),
                  Text(
                    "Left",
                    style: TextStyle(color: Color(0xff640094)),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () => _imageeditorKey.currentState?.reset(),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                backgroundColor: const Color(0xffF7F2F9),
              ),
              child: Wrap(
                // spacing: 5.0, // gap between adjacent chips
                // runSpacing: 5.0, // gap between lines
                children: const [
                  Icon(
                    Icons.restore,
                    color: Color(0xff640094),
                    // size: 24.0,
                  ),
                  // SizedBox(
                  //   width:5,
                  // ),
                  Text(
                    "Reset",
                    style: TextStyle(color: Color(0xff640094)),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () => _imageeditorKey.currentState?.rotate(),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                backgroundColor: const Color(0xffF7F2F9),
              ),
              child: Wrap(
                // spacing: 5.0, // gap between adjacent chips
                // runSpacing: 5.0, // gap between lines
                children: const [
                  Icon(
                    Icons.rotate_right,
                    color: Color(0xff640094),
                    // size: 24.0,
                  ),
                  // SizedBox(
                  //   width:5,
                  //   height: 10,
                  // ),
                  Text(
                    "Right",
                    style: TextStyle(color: Color(0xff640094)),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 2,
            )
          ],
        ),
      ),
    );
  }
}
