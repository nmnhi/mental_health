import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:mental_health/core/theme.dart';

class MusicPlayerScreen extends StatelessWidget {
  const MusicPlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: DefaultColors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Image.asset("assets/down_arrow.png"),
        ),
        actions: [
          Image.asset("assets/transcript_icon.png"),
          const SizedBox(width: 16)
        ],
      ),
      backgroundColor: DefaultColors.white,
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // artwork
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "assets/child_with_dog.png",
                height: 300,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),
            Text("Rain On Glass",
                style: Theme.of(context).textTheme.labelLarge),
            Text("By: Painting with Passion",
                style: Theme.of(context).textTheme.labelSmall),

            const Spacer(),

            ProgressBar(
              progress: const Duration(microseconds: 1000),
              total: const Duration(microseconds: 5000),
              baseBarColor: DefaultColors.lightpink,
              thumbColor: DefaultColors.pink,
              progressBarColor: DefaultColors.pink,
              onSeek: (duration) {
                print('Seek to: $duration');
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.shuffle,
                    color: DefaultColors.pink,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.skip_previous,
                    color: DefaultColors.pink,
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.pause_circle_filled,
                      color: DefaultColors.pink,
                    ),
                    iconSize: 80),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.skip_next,
                    color: DefaultColors.pink,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.repeat,
                    color: DefaultColors.pink,
                  ),
                )
              ],
            )
            // Action button (author name)
          ],
        ),
      ),
    );
  }
}
