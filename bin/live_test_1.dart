void main() {
  // Sample input list of students
  List<Map<String, dynamic>> students = [
    {"name": "Alice", "scores": [85, 90, 78]},
    {"name": "Bob", "scores": [88, 76, 95]},
    {"name": "Charlie", "scores": [90, 92, 85]}
  ];

  // Map to store average scores
  Map<String, double> averageScores = {};

  // Calculate average for each student
  for (var student in students) {
    String name = student["name"];
    List<int> scores = List<int>.from(student["scores"]);
    double avg = scores.reduce((a, b) => a + b) / scores.length;
    averageScores[name] = double.parse(avg.toStringAsFixed(2));
  }

  // Sort the map by average score in descending order
  var sortedEntries = averageScores.entries.toList()
    ..sort((a, b) => b.value.compareTo(a.value));

  // Create a new sorted map
  Map<String, double> sortedAverageScores = {
    for (var entry in sortedEntries) entry.key: entry.value
  };

  // Print the sorted result
  print(sortedAverageScores);
}