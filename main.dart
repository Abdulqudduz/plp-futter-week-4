import 'dart:io';

void main() {
  // Get user input
  print("Enter a string:");
  String userInput = stdin.readLineSync() ?? "";

  // get file name
  print("Enter a file name in this format name.txt:");
  String fileName = stdin.readLineSync() ?? "";

  // String Manipulation
  manipulateStrings(userInput);

  // Handle Collections
  handleCollections();

  // Handle File Operations
  handleFileOperations(fileName);

  // Handle Date and Time
  handleDateAndTime();

  // Log user input and current date/time
  DateTime now = DateTime.now();
  print("User input: $userInput");
  print("Date and Time of entry: $now");
}

void manipulateStrings(String userInput) {
  String concatResult = userInput + " Let's code!";
  String reverseResult = userInput.split('').reversed.join('');
  String upperCaseResult = userInput.toUpperCase();
  String lowerCaseResult = userInput.toLowerCase();

  print("Concatenated: $concatResult");
  print("Reversed: $reverseResult");
  print("Uppercase: $upperCaseResult");
  print("Lowercase: $lowerCaseResult");
}

void handleCollections() {
  List<String> fruits = ['apple', 'banana', 'orange'];
  fruits.add('mango');
  Set<String> uniqueFruits = {'apple', 'banana', 'apple'};
  Map<String, int> fruitPrices = {'apple': 2, 'banana': 1, 'orange': 3};

  print("List of fruits: $fruits");
  print("Set of unique fruits: $uniqueFruits");
  print("Fruit prices: $fruitPrices");
}

void handleFileOperations(String fileName) async {
  try {
    File inputFile = File(fileName);
    String contents = await inputFile.readAsString();
    print("File Contents: $contents");

    File outputFile = File('processed_story.txt');
    await outputFile.writeAsString('Processed story: $contents');
    print("Data written to output.txt");
  } catch (e) {
    print("Error: $e");
  }
}

void handleDateAndTime() {
  DateTime now = DateTime.now();
  print("Current date and time: $now");

  String formattedDate =
      "${now.year}-${now.month}-${now.day} ${now.hour}:${now.minute}:${now.second}";
  print("Formatted date: $formattedDate");

  DateTime futureDate = DateTime(2025, 1, 1);
  Duration difference = futureDate.difference(now);
  print("Days until 2025: ${difference.inDays} days");
}
