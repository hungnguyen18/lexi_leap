class ApiRoutes {
  static const String baseUrl = 'https://api.lexileap.com';

  // Authentication
  static const String login = '$baseUrl/auth/login';
  static const String signUp = '$baseUrl/auth/signup';
  static const String logout = '$baseUrl/auth/logout';

  // Vocabulary
  static const String fetchVocabulary = '$baseUrl/vocabulary';
  static const String fetchTopics = '$baseUrl/vocabulary/topics';

  // Quiz
  static const String fetchQuiz = '$baseUrl/quiz';

  // Progress
  static const String fetchProgress = '$baseUrl/progress';
  static const String updateProgress = '$baseUrl/progress/update';
}
