import 'package:flutter/material.dart';
import 'package:mental_health/core/theme.dart';
import 'package:mental_health/features/music/presentation/pages/music_player_screen.dart';

class PlayListScreen extends StatelessWidget {
  final List<Map<String, String>> songs = [
    {
      "title": "Rain On Glass",
      "artist": "Rain on Glass",
      "thumbnail": "assets/child_with_dog.png"
    },
    {
      "title": "Gentle Breeze",
      "artist": "Soothing Sounds",
      "thumbnail": "assets/child_with_dog.png"
    },
    {
      "title": "Whispering Pines",
      "artist": "Nature Vibes",
      "thumbnail": "assets/child_with_dog.png"
    },
    {
      "title": "Ocean Waves Breeze",
      "artist": "Soothing Sounds",
      "thumbnail": "assets/child_with_dog.png"
    },
  ];

  PlayListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: DefaultColors.white,
        title: Text(
          "Chill Playlist",
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(fontWeight: FontWeight.w500),
        ),
        elevation: 1,
        centerTitle: false,
      ),
      body: Container(
        color: DefaultColors.white,
        child: ListView.builder(
            itemCount: songs.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(songs[index]['thumbnail']!),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                ),
                title: Text(
                  songs[index]['title']!,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                subtitle: Text(
                  songs[index]['artist']!,
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MusicPlayerScreen(),
                    ),
                  );
                },
              );
            }),
      ),
    );
  }
}
