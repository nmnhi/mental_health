import 'package:flutter/material.dart';
import 'package:mental_health/core/theme.dart';
import 'package:mental_health/features/meditation/presentation/widgets/feeling_button.dart';
import 'package:mental_health/features/meditation/presentation/widgets/task_card.dart';

class MeditationScreen extends StatelessWidget {
  const MeditationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: DefaultColors.white,
        elevation: 0,
        leading: Image.asset("assets/menu_burger.png"),
        actions: const [
          CircleAvatar(
            backgroundImage: AssetImage("assets/profile.png"),
          ),
          SizedBox(width: 16)
        ],
      ),
      backgroundColor: DefaultColors.white,
      body: Container(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Welcome back, Nhi Nguyen",
                  style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 32),
              Text(
                "How are you feeling today?",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 16),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FeelingButton(
                    label: 'Happy',
                    image: "assets/happy.png",
                    color: DefaultColors.pink,
                  ),
                  FeelingButton(
                    label: 'Calm',
                    image: "assets/calm.png",
                    color: DefaultColors.purple,
                  ),
                  FeelingButton(
                    label: 'Relax',
                    image: "assets/relax.png",
                    color: DefaultColors.orange,
                  ),
                  FeelingButton(
                    label: 'Focus',
                    image: "assets/focus.png",
                    color: DefaultColors.lightteal,
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Text(
                "Today Task",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 16),
              TaskCard(
                title: "Morning",
                color: DefaultColors.task1,
                description:
                    "Let's open up to the thing that matters among the people",
              ),
              const SizedBox(height: 16),
              TaskCard(
                title: "Noon",
                color: DefaultColors.task2,
                description:
                    "Let's open up to the thing that matters among the people",
              ),
              const SizedBox(height: 16),
              TaskCard(
                title: "Evening",
                color: DefaultColors.task3,
                description:
                    "Let's open up to the thing that matters among the people",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
