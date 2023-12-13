import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/results_screen.dart';
import 'package:quiz_app/start_screen.dart';

import 'data/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length){
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  void switchScreen(){
    setState(() {
      activeScreen = 'question-screen';
    });
  }
  @override
  Widget build(BuildContext context) {
    //Alternative 2 instead of init State Calling
    Widget screenWidget = StartScreen(switchScreen);
    if(activeScreen == 'question-screen'){
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer,);
    }
    
    if (activeScreen == 'results-screen'){
      screenWidget = ResultsScreen(chosenAnswers: selectedAnswers,);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          // Alternative 1 instead of init State Calling
          /*child: activeScreen == 'start-screen'
              ? StartScreen(switchScreen)
              : const Quiz(),*/
          child: screenWidget,
        ),
      ),
    );
  }
}