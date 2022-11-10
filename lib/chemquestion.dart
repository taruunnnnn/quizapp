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
    "The hardest natural substance known is?",
    [
      Answer("Graphite", false),
      Answer("Granite", false),
      Answer("Diamond", true),
      Answer("Stainless steel", false),
    ],
  ));

  list.add(Question(
    "Which of the following is not a covalent compound?",
    [
      Answer("H2O", false),
      Answer("CO2", false),
      Answer("Cl2", true),
      Answer("Na2O", false),
    ],
  ));

  list.add(Question(
    "Which of the following is a strong base?",
    [
      Answer("Ammonium Hydroxide", false),
      Answer("Calcium Hydroxide", false),
      Answer("Potassium Hydroxide", true),
      Answer("Magnisium Hydroxide", false),
    ],
  ));

  list.add(Question(
    "Which among the following compounds is the main constituent of natural gas?",
    [
      Answer("Hexane", false),
      Answer("Benzene", false),
      Answer("Methane", true),
      Answer("Butane", false),
    ],
  ));

  list.add(Question(
    "Compressed Natural Gas (CNG) is mainly composed of?",
    [
      Answer("Butane", false),
      Answer("Propane", false),
      Answer("Methane", true),
      Answer("Ethane", false),
    ],
  ));

  list.add(Question(
    "Photo chemical smog always contains?",
    [
      Answer("Methane", false),
      Answer("Phosphorus", false),
      Answer("Ozone", true),
      Answer("Aluminium ion", false),
    ],
  ));

  list.add(Question(
    "Which of the following is not a green house gas?",
    [
      Answer("Carbon dioxide", false),
      Answer("Methane", false),
      Answer("Argon", true),
      Answer("Chlorofluorocarbon", false),
    ],
  ));

  list.add(Question(
    "Dichloro - dipenyl - trichloro - ethane (DDT) is a?",
    [
      Answer("Biochemical pollutant", false),
      Answer("Non-biodegradable pollutant", false),
      Answer("Non-biodegradable pollutant", true),
      Answer("Non-pollutant", false),
    ],
  ));

  list.add(Question(
    "Rusting of Iron is an example of?",
    [
      Answer("Reduction", false),
      Answer("Radioactive decay", false),
      Answer("Oxidation", true),
      Answer("Decomposition", false),
    ],
  ));

  list.add(Question(
    "Which of the following is an ore of iron?",
    [
      Answer("Alluminium", false),
      Answer("Bauxite", false),
      Answer("Hematite", true),
      Answer("Cinnabar", false),
    ],
  ));

  return list;
}