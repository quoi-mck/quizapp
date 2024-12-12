class Question {
  final String id;  // Every question will have an ID
  final String title;  // Every question will have a title, it's the question itself
  final Map<String, bool> options;  // Every question will have options, options will be like - {'1': true, '2': false}

  // Create a constructor
  Question({
    required this.id,
    required this.title,
    required this.options,
  });

  @override
  String toString() {
    return 'Question(id: $id, title: $title, options: $options)';
  }
}
