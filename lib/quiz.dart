import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  /*@override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }*/

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
      screenWidget = const QuestionsScreen();
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