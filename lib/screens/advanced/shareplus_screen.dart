import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

class ShareplusScreen extends StatefulWidget {
  const ShareplusScreen({Key? key}) : super(key: key);

  @override
  State<ShareplusScreen> createState() => _ShareplusScreenState();
}

class _ShareplusScreenState extends State<ShareplusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shareplus'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () async {
                const urllink =
                    'https://www.google.com/imgres?imgurl=https%3A%2F%2Fcdn.pixabay.com%2Fphoto%2F2015%2F04%2F23%2F22%2F00%2Ftree-736885_1280.jpg&tbnid=aVgXecnmQ_f1MM&vet=12ahUKEwjv7cbx8fqAAxVR5TgGHSoVDuUQMygBegQIARBS..i&imgrefurl=https%3A%2F%2Fpixabay.com%2Fimages%2Fsearch%2Fnature%2F&docid=Ba_eiczVaD9-zM&w=1280&h=797&q=image&ved=2ahUKEwjv7cbx8fqAAxVR5TgGHSoVDuUQMygBegQIARBS';
                final url = Uri.parse(urllink);
                final response = await http.get(url);
                final bytes = response.bodyBytes;
                final temp = await getTemporaryDirectory();
                final path = '${temp.path}logo.png';
                if (kDebugMode) {
                  print(path);
                }
                File(path).writeAsBytesSync(bytes);
                await Share.shareFiles([path],
                    text: 'images', subject: 'something to share');
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffF7F2F9)),
              child: const Text(
                'Share',
                style: TextStyle(color: Color(0xff640094)),
              ),
            ),
          ),

          //ElevatedButton
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffF7F2F9)),
              onPressed: () async {
                await Share.share("Flutter Book App",
                    subject: 'any subject if you have');
              },
              child: const Text(
                'Share Text',
                style: TextStyle(color: Color(0xff640094)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
