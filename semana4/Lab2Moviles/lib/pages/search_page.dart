import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:lab2261/components/search_list_item.dart';
import 'package:lab2261/model/track.dart';
import 'package:http/http.dart' as http;

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<Track> tracks = [];

  Future<void> getData() async {
    final url = Uri.parse("https://api.deezer.com/search?q=eminem");
    final response = await http.get(url);

    if (response.statusCode == 200) {
      print("Data received successfully");
      final data = jsonDecode(response.body);
      for (int i = 0; i < data['data'].length /*&& i < 6*/; i++) {
        final temp = data['data'][i];
        final track = Track(
          id: temp['id'].toString(),
          title: temp['title'],
          artist: temp['artist']['name'],
          album: temp['album']['title'],
          coverUrl: temp['album']['cover_medium'],
        );
        print("Track ${i + 1}: ${track.title} by ${track.artist}");
        setState(() {
          tracks.add(track);
        });
      }
    } else {
      print("Error: ${response.statusCode}");
    }
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: tracks.length,
            itemBuilder: (context, index) {
              final track = tracks[index];
              return SearchListItem(track: track);
            },
          ),
        ),
      ],
    );
  }
}
