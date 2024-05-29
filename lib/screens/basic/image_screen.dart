import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:transparent_image/transparent_image.dart'
    show kTransparentImage;

class ImageScreen extends StatefulWidget {
  const ImageScreen({Key? key}) : super(key: key);

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  @override
  Widget build(BuildContext context) {
    // bool hasConnection;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Images'),
      ),
      body: ListView(
        children: [
          const ListTile(title: Text('Image from Asset:')),

          Image.asset('assets/logo.png'),
          const Divider(),

          //Image from Network
          const ListTile(title: Text('Image from Network:')),
          Image.network(
            'https://techcrunch.com/wp-content/uploads/2019/05/Screen-Shot-2019-05-01-at-9.19.45-AM.png',
            scale: 1.0,
            height: 300,
          ),
          const Divider(),

          const ListTile(title: Text('Fade In Image:')),
          Card(
            child: Center(
              child: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image:
                    'https://www.syncfusion.com/blogs/wp-content/uploads/2019/12/Flutter_Trends_and_Community_Updates_Social.jpg',
              ),
            ),
          ),
          const Divider(),

          const ListTile(title: Text('Cached network image:')),
          CachedNetworkImage(
            imageUrl: "http://via.placeholder.com/350x150",
            progressIndicatorBuilder: (context, url, downloadProgress) =>
                CircularProgressIndicator(value: downloadProgress.progress),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ],
      ),
    );
  }
}
