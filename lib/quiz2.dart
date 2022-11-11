import 'package:flutter/material.dart';
import 'package:quizit/mathematics.dart';
import 'package:quizit/chemquestion.dart';

import 'home.dart';


class QuizScreen3 extends StatefulWidget {
  @override
  State<QuizScreen3> createState() => _QuizScreen3State();
  const QuizScreen3({Key? key, required String title}) : super(key: key);

}

class _QuizScreen3State extends State<QuizScreen3> {
  //define the datas
  List<Question> questionList = getQuestions();
  int currentQuestionIndex = 0;
  var score = 0;
  Answer? selectedAnswer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          Image(
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.fill,
            image: AssetImage('images/final.jpg'),),


          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
            child:
            Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              const Text(
                "CHEMISTRY",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontFamily: 'Oswald',
                    fontWeight: FontWeight.bold
                ),
              ),
              _questionWidget(),
              _answerList(),
              _nextButton(),
            ]),
          ),
        ],
      ),
    );
  }

  _questionWidget() {
    return Column(

      children: [
        Text(
          "${currentQuestionIndex + 1}/${questionList.length.toString()}",
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          questionList[currentQuestionIndex].questionText,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
              fontFamily: 'OpenSans'
          ),
        )
      ],
    );
  }

  _answerList() {
    return Column(
      children: questionList[currentQuestionIndex]
          .answersList
          .map(
            (e) => _answerButton(e),
      )
          .toList(),
    );
  }

  Widget _answerButton(Answer answer) {
    bool isSelected = answer == selectedAnswer;

    if(isSelected){return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8),
      height: 48,
      child: ElevatedButton(

        child: Text(answer.answerText),
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),

          primary:answer.isCorrect ? Colors.green : Colors.red,

          onPrimary: isSelected ? Colors.white : Colors.white,
          // primary: answer.isCorrect ? Colors.green : Colors.red,
        ),
        onPressed: () {






          if (selectedAnswer == null) {
            if (answer.isCorrect) {
              score++;
            }
            setState(() {
              selectedAnswer = answer;
            });
          }
        },
      ),
    );}

    else
    {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(vertical: 8),
        height: 48,
        child: ElevatedButton(

          child: Text(answer.answerText),
          style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),

            primary: Colors.black38,

            onPrimary: isSelected ? Colors.white : Colors.white,
            // primary: answer.isCorrect ? Colors.green : Colors.red,
          ),
          onPressed: () {






            if (selectedAnswer == null) {
              if (answer.isCorrect) {
                score++;
              }
              setState(() {
                selectedAnswer = answer;
              });
            }
          },
        ),
      );
    }
  }

  _nextButton() {
    bool isLastQuestion = false;
    if (currentQuestionIndex == questionList.length - 1) {
      isLastQuestion = true;
    }



    return Container(
      width: 150,
      height: 48,
      child: ElevatedButton(
        child: Text(isLastQuestion ? "Submit" : "Next",
          style: TextStyle(
              fontFamily: 'OpenSans',
              fontWeight: FontWeight.bold
          ),
        ),
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          primary: isLastQuestion ? Colors.black38 : Colors.black38,
          onPrimary: Colors.white,
        ),
        onPressed: () {
          if (isLastQuestion) {
            //display score

            showDialog(context: context, builder: (_) => result());
          } else {
            //next question
            setState(() {
              selectedAnswer = null;
              currentQuestionIndex++;
            });
          }
        },
      ),
    );



  }

  result() {


    return Scaffold(
      body: Stack(
        children: [
          Image(
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.fill,
            image: AssetImage('images/final.jpg'),),

          Center(
            child: Column(

              children: [
                SizedBox(
                  height: 100,
                ),

                Text(
                  'RESULT',
                  style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Oswald',
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ),

                Divider(
                  thickness: 1,
                  color: Colors.white,
                  indent: 80,
                  endIndent: 80,
                ),

                SizedBox(
                  height: 20,
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Text(
                    "Results does not reflect what you know, it reflects what you don't know.",
                    style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight.bold,
                        color: Colors.white60,
                        fontSize: 20
                    ),
                  ),
                ),

                SizedBox(
                  height: 100,
                ),




                Text(
                  "SCORE: $score",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Oswald',
                    fontSize: 50,
                  ),
                ),

                SizedBox(
                  height: 100,
                ),
                Container(
                  height: 60,
                  width: 150,
                  child: TextButton(
                    child: Text('EXIT',style: TextStyle(color: Colors.white,fontFamily: 'Roboto',fontWeight: FontWeight.bold),),

                    onPressed: () {

                      Navigator.of(context).pushNamedAndRemoveUntil('/', (Route<dynamic> route) => false);

                    },
                  ),
                  decoration: BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.all(Radius.circular(60))
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );

  }
}