import 'dart:io';

void main() {
  // Get user input
  print("Enter a string:");
  String userInput = stdin.readLineSync() ?? "";
  
  // String Manipulation
  manipulateStrings();
  
  // Handle Collections
  handleCollections();
  
  // Handle File Operations
  handleFileOperations();
  
  // Handle Date and Time
  handleDateAndTime();
  
  // Log user input and current date/time
  DateTime now = DateTime.now();
  print("User input: $userInput");
  print("Date and Time of entry: $now");
}

void manipulateStrings() {
  String input = "Hello Dart!";
  String concatResult = input + " Let's code!";
  String reverseResult = input.split('').reversed.join('');
  String upperCaseResult = input.toUpperCase();
  String lowerCaseResult = input.toLowerCase();
  
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

void handleFileOperations() async {
  try {
    File inputFile = File('input.txt');
    String contents = await inputFile.readAsString();
    print("File Contents: $contents");
    
    File outputFile = File('output.txt');
    await outputFile.writeAsString('Processed contents: $contents');
    print("Data written to output.txt");
  } catch (e) {
    print("Error: $e");
  }
}

void handleDateAndTime() {
  DateTime now = DateTime.now();
  print("Current date and time: $now");
  
  String formattedDate = "${now.year}-${now.month}-${now.day} ${now.hour}:${now.minute}:${now.second}";
  print("Formatted date: $formattedDate");
  
  DateTime futureDate = DateTime(2025, 1, 1);
  Duration difference = futureDate.difference(now);
  print("Days until 2025: ${difference.inDays} days");
}
