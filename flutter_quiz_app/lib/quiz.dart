import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/questions_screen.dart';
import 'package:flutter_quiz_app/start_screen.dart';

enum ScreenName {
  startScreen,
  questionsScreen,
}

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  ScreenName activeScreen = ScreenName.startScreen;

  void switchScreen(ScreenName newScreen) {
    setState(() {
      activeScreen = newScreen;
    });
  }

  Widget renderScreen() {
    switch (activeScreen) {
      case ScreenName.startScreen:
        return StartScreen(startQuiz: () {
          switchScreen(ScreenName.questionsScreen);
        });

      case ScreenName.questionsScreen:
        return const QuestionsScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Quiz App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
            ),
          ),
          child: renderScreen(),
        ),
      ),
    );
  }
}
