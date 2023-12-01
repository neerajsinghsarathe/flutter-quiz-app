import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget{
  const QuestionsScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _QuestionsState();
  }
}

class _QuestionsState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Text('questions screen');
  }
}