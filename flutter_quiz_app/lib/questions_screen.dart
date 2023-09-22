import 'package:flutter/material.dart';

class QuestionsScreen extends StatelessWidget {
  const QuestionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Question',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(onPressed: () {}, child: const Text('Hi')),
          ElevatedButton(onPressed: () {}, child: const Text('Hi')),
          ElevatedButton(onPressed: () {}, child: const Text('Hi')),
          ElevatedButton(onPressed: () {}, child: const Text('Hi')),
        ],
      ),
    );
  }
}
