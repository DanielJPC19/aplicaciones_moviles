import 'package:flutter/material.dart';
import 'package:semana3_lab/src/components/music_list_item.dart';

class PlaylistPage extends StatefulWidget {

  const PlaylistPage({super.key});

  @override
  State<StatefulWidget> createState() => _PlaylistPageState();

}

class _PlaylistPageState extends State<PlaylistPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MusicListItem(),
      ],
    );
  }

}