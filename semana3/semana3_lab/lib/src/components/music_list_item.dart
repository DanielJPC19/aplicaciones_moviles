import 'package:flutter/material.dart';

class MusicListItem extends StatelessWidget {
  const MusicListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Row(
          children: [
            SizedBox(
              width: 50,
              height: 50,
              child: CircleAvatar(
                radius: 2,
                backgroundImage: AssetImage('assets/imagen1.jpg'),
              ),
            ),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text("Chill Vibes Songs"), Text("Playlist - Chill")],
            ),
          ],
        ),
      ),
    );
  }
}
