import 'package:flutter/material.dart';

import '../services/album.dart';
import '../services/models.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Album"),
      ),
      body: const Center(
        child: AlbumDisplay(),
      ),
    );
  }
}

class AlbumDisplay extends StatefulWidget {
  const AlbumDisplay({super.key});

  @override
  State<AlbumDisplay> createState() => _AlbumDisplayState();
}

class _AlbumDisplayState extends State<AlbumDisplay> {
  late Future<Album> futureAlbum;

  /// A method that is only called once, in the beginning
  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: futureAlbum,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          // non-null data is present when the fetch is successful
          return Text(snapshot.data!.title);
        } else if (snapshot.hasError) {
          // this happens when an exception is thrown in the future completion
          return Text("${snapshot.error}");
        }

        // wait
        // this will show a material design loading circle
        return const CircularProgressIndicator();
      },
    );
  }
}
