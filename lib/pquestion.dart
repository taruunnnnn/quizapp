class Question {
  final String questionText;
  final List<Answer> answersList;

  Question(this.questionText, this.answersList);
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<Question> getQuestions() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    "Which of the following is not an example of doing work against gravity?",
    [
      Answer("Lifting of a baby from the floor", false),
      Answer("Lifting of the weights by a weightlifter", false),
      Answer(" Child pulls a toy car", true),
      Answer("Working of a lift by an electric motor", false),
    ],
  ));

  list.add(Question(
    "Solar energy is converted into electric energy through?",
    [
      Answer("Leclanche cells", false),
      Answer("Voltaic cells", false),
      Answer("Photo voltaic cells", true),
      Answer("Dry cells", false),
    ],
  ));

  list.add(Question(
    "Thermodynamically the most stable form of carbon is?",
    [
      Answer("Diamond", false),
      Answer("Coal", false),
      Answer("Graphite", true),
      Answer("Fullerene", false),
    ],
  ));

  list.add(Question(
    "Which of the following materials is most elastic?",
    [
      Answer("Iron", false),
      Answer("Rubber", false),
      Answer("Steel", true),
      Answer("Plastic", false),
    ],
  ));

  list.add(Question(
    "The unit of frequency is?",
    [
      Answer("Kilo Hz", false),
      Answer("Hz/Sec", false),
      Answer("Hz", true),
      Answer("Kg Hz/Sec", false),
    ],
  ));

  list.add(Question(
    "Horsepower is equal?",
    [
      Answer("776 watts", false),
      Answer("11,000 volts", false),
      Answer("746 watts", true),
      Answer("None of the abov", false),
    ],
  ));

  list.add(Question(
    "The best electrical conductor among the following is?",
    [
      Answer("Gold", false),
      Answer("Copper", false),
      Answer("Silver", true),
      Answer("Aluminum", false),
    ],
  ));

  list.add(Question(
    "The unit of electrical resistance?",
    [
      Answer("ampere", false),
      Answer("volt", false),
      Answer("ohm", true),
      Answer("coulomb", false),
    ],
  ));

  list.add(Question(
    "For a wave, wavelength divided by the time period is equal to?",
    [
      Answer("phase difference", false),
      Answer("frequency", false),
      Answer("wave velocity", true),
      Answer("amplitude", false),
    ],
  ));

  list.add(Question(
    "Which of the following does not involve Total Internal Reflection?",
    [
      Answer("Mirages in Deserts", false),
      Answer("Diamond Sparkle", false),
      Answer("Kaleidoscope", true),
      Answer("Transmission of light rays in Optical Fibres", false),
    ],
  ));

  return list;
}