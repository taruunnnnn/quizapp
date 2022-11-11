class Question {
  final String questionText;
  final List<Answer> answersList;

  Question(this.questionText, this.answersList,);
}

class Answer {
  final String answerText;
  final bool isCorrect;



  Answer(this.answerText, this.isCorrect,);

}

List<Question> getQuestions() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    "A line which cuts a pair of parallel lines is called?",
    [
      Answer("tangent", false,),
      Answer("chord", false),
      Answer("traversal", true),
      Answer("intersector", false),
    ],
  ));

  list.add(Question(
    "An angle whose value is called complete angle?",
    [
      Answer("180", false),
      Answer("240", false),
      Answer("360", true),
      Answer("none of the above", false),
    ],
  ));

  list.add(Question(
    "The average of first 50 natural numbers is ?",
    [
      Answer("25.30", false),
      Answer("25.00", false),
      Answer("25.50", true),
      Answer("12.25", false),
    ],
  ));

  list.add(Question(
    "The number of 3-digit numbers divisible by 6, is ?",
    [
      Answer("149", false),
      Answer("166", false),
      Answer("150", true),
      Answer("151", false),
    ],
  ));

  list.add(Question(
    "What is 1004 divided by 2?",
    [
      Answer("52", false),
      Answer("520", false),
      Answer("502", true),
      Answer("5002", false),
    ],
  ));

  list.add(Question(
    "106 × 106 – 94 × 94 = ?",
    [
      Answer("2004", false),
      Answer("1904", false),
      Answer("2400", true),
      Answer("1906", false),
    ],
  ));

  list.add(Question(
    "Which of the following numbers gives 240 when added to its own square?",
    [
      Answer("18", false),
      Answer("16", false),
      Answer("15", true),
      Answer("20", false),
    ],
  ));

  list.add(Question(
    "Evaluation of 83 × 82 × 8-5 is ?",
    [
      Answer("8", false),
      Answer("0", false),
      Answer("1", true),
      Answer("None of these", false),
    ],
  ));

  list.add(Question(
    "The simplest form of 1.5 : 2.5 is ?",
    [
      Answer("6:10", false),
      Answer("15:25", false),
      Answer("3:5", true),
      Answer("0.75:1.25", false),
    ],
  ));

  list.add(Question(
    "A clock strikes once at 1 o’clock, twice at 2 o’clock, thrice at 3 o’clock and so on. How many times will it strike in 24 hours?",
    [
      Answer("78", false),
      Answer("136", false),
      Answer("156", true),
      Answer("196", false),
    ],
  ));

  return list;
}