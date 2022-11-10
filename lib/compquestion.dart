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
    "Which one of the following is not a search engine?",
    [
      Answer("Google", false),
      Answer("Yahoo", false),
      Answer("Chrome", true),
      Answer("Bing", false),
    ],
  ));

  list.add(Question(
    "Which of these is the smallest possible unit of data?",
    [
      Answer("Byte", false),
      Answer("Kilobyte", false),
      Answer("Bit", true),
      Answer("Megabyte", false),
    ],
  ));

  list.add(Question(
    "Which is one of the following is not an output device?",
    [
      Answer("Printer", false),
      Answer("Visual Display Units", false),
      Answer("Keyboard", true),
      Answer("Plotter", false),
    ],
  ));

  list.add(Question(
    "Which web browser was developed by Google?",
    [
      Answer("Safari", false),
      Answer("Firefox", false),
      Answer("Chrome", true),
      Answer("Internet Explorer", false),
    ],
  ));

  list.add(Question(
    "How many Bits are there in a nibble?",
    [
      Answer("32", false),
      Answer("16", false),
      Answer("4", true),
      Answer("8", false),
    ],
  ));

  list.add(Question(
    "Blowfish is a type of?",
    [
      Answer("Hashing Algorithm", false),
      Answer("Symmetric Encryption Algorithm", false),
      Answer("Digital Signature Algorithm", true),
      Answer("Asymmetric Encryption Algorithm", false),
    ],
  ));

  list.add(Question(
    "IPv6 protocol defines an IP address of?",
    [
      Answer("64 bit", false),
      Answer("32 bit", false),
      Answer("128 bit", true),
      Answer("256 bit", false),
    ],
  ));

  list.add(Question(
    " A social network can be represented as?",
    [
      Answer("Tree", false),
      Answer("Star", false),
      Answer("Graph", true),
      Answer("Ring", false),
    ],
  ));

  list.add(Question(
    "Microsoft Excel is a?",
    [
      Answer("MS office package", false),
      Answer("Graphic package", false),
      Answer("Electronic Spreadsheet", true),
      Answer("Financial planning package", false),
    ],
  ));

  list.add(Question(
    "Which memory is both static and non-volatile?",
    [
      Answer("CACHE", false),
      Answer("BIOS", false),
      Answer("ROM", true),
      Answer("RAM", false),
    ],
  ));

  return list;
}