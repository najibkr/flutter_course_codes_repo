<style type="text/css">
  body{
  font-size: 14pt;
  line-height: 1.4;
}
h1 {
   color: #00b050;
}
</style>

![Laams Cover Photo](coverphoto.jpg)
# Tabel of Contents
- [Tabel of Contents](#tabel-of-contents)
- [**Project 0001: Welcome User App**](#project-0001-welcome-user-app)
    - [*Package Name:* welcome.dart](#package-name-welcomedart)
  - [Description:](#description)
  - [Steps:](#steps)
  - [Solution:](#solution)
- [**Project 0002: Student Ranking App**](#project-0002-student-ranking-app)
    - [*Package Name:* student_ranking.dart](#package-name-student_rankingdart)
  - [Desciption:](#desciption)
  - [Steps:](#steps-1)
  - [Solution:](#solution-1)
- [**Project 0003: Get User Input Function:**](#project-0003-get-user-input-function)
    - [*Package Name:* get_user_input.dart](#package-name-get_user_inputdart)
  - [Description:](#description-1)
  - [Solution:](#solution-2)
- [**Project 0004: Calculator Application**](#project-0004-calculator-application)
    - [*Package Name:* calculator.dart](#package-name-calculatordart)
  - [Description:](#description-2)
  - [Solution:](#solution-3)
- [**Project 0005: User Authentication App**](#project-0005-user-authentication-app)
    - [*Package Name:* authenticator.dart](#package-name-authenticatordart)
  - [Description:](#description-3)
  - [Steps:](#steps-2)
  - [Solution:](#solution-4)
- [**Project 0006: Average Finder App**](#project-0006-average-finder-app)
    - [*Package Name:* average.dart](#package-name-averagedart)
  - [Description:](#description-4)
  - [Steps:](#steps-3)
  - [Solution:](#solution-5)
- [**Project 0007: User Info Displayer App**](#project-0007-user-info-displayer-app)
    - [*Package Name:* user_info.dart](#package-name-user_infodart)
  - [Description:](#description-5)
  - [Steps:](#steps-4)
  - [Solution:](#solution-6)
- [**Project 0008: Multiplication Table App**](#project-0008-multiplication-table-app)
    - [*Package Name:* multiply.dart](#package-name-multiplydart)
  - [Description:](#description-6)
  - [Steps:](#steps-5)
  - [Solution:](#solution-7)
- [**Project 0009: Guessing Game:**](#project-0009-guessing-game)
    - [*Package Name:* guessing_game.dart](#package-name-guessing_gamedart)
  - [Description:](#description-7)
  - [Steps:](#steps-6)
  - [Solution:](#solution-8)
- [**Project 0010: Find and Replace App**](#project-0010-find-and-replace-app)
    - [*Package Name:* finder.dart](#package-name-finderdart)
  - [Description:](#description-8)
  - [Steps:](#steps-7)
  - [Solution:](#solution-9)
- [**Project 0011: Products Catalogue App**](#project-0011-products-catalogue-app)
    - [*Package Name: products.dart](#package-name-productsdart)
  - [Description:](#description-9)
  - [Steps:](#steps-8)
  - [Solution:](#solution-10)
- [**Project 0012: Creating A Todo**](#project-0012-creating-a-todo)
    - [*Package Name: products.dart](#package-name-productsdart-1)
  - [Description:](#description-10)
  - [Steps:](#steps-9)

\
&nbsp;
\
&nbsp;
\
&nbsp;
# **Project 0001: Welcome User App**
### *Package Name:* [welcome.dart](../lesson_001/welcome.dart)
## Description:
This app prompts the user for name, and displays a welcome message alongside the user's entered name.
## Steps:
1. Ask the user to enter a name!
2. Store the user input in a variable named `userName` of type `String`!
3. Print out a welcome message longside `userName`!

## Solution: 
```dart
import 'dart:io';

void main() {
   stdout.write("Enter your name: ");
   String? userName = stdin.readLineSync();
   print('Welcome, $userName');
}
```

\
&nbsp;
\
&nbsp;
\
&nbsp;

# **Project 0002: Student Ranking App**
### *Package Name:* [student_ranking.dart](../lesson_006/student_ranking.dart)
## Desciption:
This applicaiton prompts the user to enter his/her score. The student's ranking for A-Failure is displayed back to the user based on the entered score.
## Steps:
1. Asks the user for his/her name
2. waits for the user to input his/her number
3. Once receiving the name input, the application asks the user to enter his/her number when ran
4. Waits for the user to enter a number
5. Diplays user grading in A, B, C, D system
    * Grade above hundred is displayed as incorrect
    * Grade between 90-100 is displayed as A-, A, A+
    * Grade between 80-90 is displayed as B-, B, B+
    * Grade between 70-80 is displaed as C-, C, C+
    * Grade between 60 - 70 is displayed as D,
    * Grade below 60 is displayed as failed. 

## Solution: 

```dart
import 'dart:io';

void main() {
  // User Name:
  stdout.write('Enter your name: ');
  String? userName = stdin.readLineSync();
// Score:
  stdout.write('Enter your score: ');
  double scoreInput = double.tryParse("${stdin.readLineSync()}") ?? 0;
  if (scoreInput > 100) {
    print("Wrong score");
  } else if (scoreInput >= 90 && scoreInput <= 100) {
    if (scoreInput < 95) {
      print('$userName your ranking is: A-');
    } else if (scoreInput == 95) {
      print('$userName your ranking is: A');
    } else {
      print('$userName your ranking is: A+');
    }
  } else if (scoreInput >= 80 && scoreInput < 90) {
    if (scoreInput < 85) {
      print('$userName your ranking is: B-');
    } else if (scoreInput == 85) {
      print('$userName your ranking is: A');
    } else {
      print('$userName your ranking is: A+');
    }
  } else if (scoreInput >= 70 && scoreInput < 80) {
    if (scoreInput < 75) {
      print('$userName your ranking is: C-');
    } else if (scoreInput == 75) {
      print('$userName your ranking is: C');
    } else {
      print('$userName your ranking is: c+');
    }
  } else if (scoreInput < 70) {
    print('$userName you have failed.');
  }
}
```

\
&nbsp;
\
&nbsp;
\
&nbsp;
# **Project 0003: Get User Input Function:**
### *Package Name:* [get_user_input.dart](../lesson_007/get_user_input.dart)
## Description:
The function `T getUserInput<DataType>(String instruction);` is a generic function which parser the `DataType` which has been passed to the function, by casting the user input to the requested data type. 
## Solution:
```dart

import 'dart:io';

/// this will get the user input based on the assigned generic type
/// to user this, here is an example
/// ```dart
/// [String]``` userName = getUserInput<String>('Enter your name');]
/// [print(userName)]
T getUserInput<T>(String instruction) {
  String stringInput = _getStringInput(instruction);
  if (T == String) return stringInput as T;
  if (T == double) return _convertToDouble(stringInput) as T;
  if (T == int) return _convertToInt(stringInput) as T;
  if (T == bool) return _convertToBool(stringInput) as T;
  return stringInput as T;
}

String _getStringInput(String? instruction) {
  String? input;
  do {
    stdout.write("$instruction: ");
    input = stdin.readLineSync();
  } while (input == null || input.isEmpty);
  return input;
}

double _convertToDouble(String stringInput) {
  final doubleInput = double.tryParse(stringInput);
  return doubleInput ?? 0;
}

int _convertToInt(String stringInput) {
  final doubleInput = int.tryParse(stringInput);
  return doubleInput ?? 0;
}

bool? _convertToBool(String stringInput) {
  final lowered = stringInput.toLowerCase();
  if (lowered == "y" ||
      lowered == 'yes' ||
      lowered == 't' ||
      lowered == 'true') {
    return true;
  } else {
    return false;
  }
}
``` 
\
&nbsp;
\
&nbsp;
\
&nbsp;
# **Project 0004: Calculator Application**
### *Package Name:* [calculator.dart](../lesson_007/calculator.dart)
## Description:
This app will take three inputs: `firstNumber`, `sign` and `secondNumber`. Arithmatic operation is then implemented between the two numbers based on the entered `sign` by user.
1. Ask the user to enter a number of type `double`!
2. Loop until the user enter a number!
3. Store the user number input in variable named `firstNumber` of type `double`!
4. Ask the user to input an **arithmetic operator**!
5. Loop until the user enter an operator!
6. Store the user operator input in a variable named `sign` of type `String`!
7. Ask the user to enter a number of type `double`!
8. Loop until the user enter a number!
9. Store the user number input in variable named `secondNumber` of type `double`!
10. Display the operation's result to the user!

## Solution: 
```dart
import 'get_user_input.dart';

void main() {
  double firstNumber = getUserInput<double>('Enter the fist number');
  String sign = getUserInput<String>('Enter arithmatic sign');
  double secondNumber = getUserInput<double>('Enter the second number');
  late double result;
  if (sign == '+') {
    result = firstNumber + secondNumber;
  } else if (sign == '-') {
    result = firstNumber - secondNumber;
  } else if (sign == '*') {
    result = firstNumber * secondNumber;
  } else if (sign == '/') {
    result = firstNumber / secondNumber;
  } else {
    throw 'Sign was not recognized';
  }

  print('The Result of $firstNumber + $secondNumber is equal to: $result');
}

```

\
&nbsp;
\
&nbsp;
\
&nbsp;

# **Project 0005: User Authentication App**
### *Package Name:* [authenticator.dart](../lesson_007/authenticator.dart)
## Description:
This app can signup a user using `userName`, `userEmail` and `userPassword`. The user is first prompted to signup and then signin user `userEmail` and `userPassword`. It is a simulation of real-world applications.
## Steps: 
1. Asks the user to enter one of the following commands: signup, signin, exit
2. if the user enters exit, the application will be terminated
3. if the user enter signup, the user is asked to enter his/her full name, email and password, syncronously
4. the entered input should be saved in global variables respectively
5. After the user inputs all the needed information a success message should be displayed.
6. program loops back and displays the first command.
   1. if the user enters exit, the program terminates
   2. if the user enters signin, the user will be prompted for email and password sysncronously
   3. if the email and password matches the saved email and password
      1. the user is signed in and welcomed, will all his/her recorded info
      2. if the password or email is wrong I enter failure message is displayed.
      3. then, the programs loops back to the first command.
## Solution: 
```dart
import 'get_user_input.dart';

String? userName;
String? userEmail;
String? userPass;
void main() {
  print('''
  -------------------------------
  User Authentication Application
  -------------------------------
  ''');
  bool isProgrammRunning = true;
  while (isProgrammRunning) {
    String? command =
        getUserInput<String>('Enter a command (signup, signin, exit)');
    if (command == 'exit') {
      isProgrammRunning = !isProgrammRunning;
    } else if (command == 'signup') {
      userName = getUserInput<String>('Enter your name');
      userEmail = getUserInput<String>('Enter your email');
      userPass = getUserInput<String>('Enter your password');
      print('Successfully created account: for $userName');
    } else if (command == 'signin') {
      if (userName == null) {
        print("YOur must signup before signing in");
      } else {
        String inputEmail = getUserInput<String>('Enter your email');
        String inputPass = getUserInput<String>('Enter your password');
        if (inputEmail == userEmail && inputPass == userPass) {
          print('Wecome:$userName $userEmail $userPass');
        } else {
          print("Your password or email is wrong");
        }
      }
    }
  }
}
```

\
&nbsp;
\
&nbsp;
\
&nbsp;

# **Project 0006: Average Finder App**
### *Package Name:* [average.dart](../lesson_008/average.dart)
## Description:
This app find the average of a student's score. 
## Steps:
## Solution:

```dart
import '../lesson_007/get_user_input.dart';

void main() {
  List<double> myScores = [];
  int numberOfSubject = getUserInput<int>('How many subjects you took');
  for (int count = 0; count < numberOfSubject; count++) {
    double score = getUserInput<double>('Enter Subject ${count + 1} score');
    myScores.add(score);
  }
  var total = myScores.reduce((a, b) => a + b);
  print(
      'Your average score is: ${(total / numberOfSubject).toStringAsFixed(2)}');
}
```
\
&nbsp;
\
&nbsp;
\
&nbsp;

# **Project 0007: User Info Displayer App**
### *Package Name:* [user_info.dart](../lesson_008/user_info.dart)
## Description:
This app asks the user for information and then displays the entered info. 
## Steps:
## Solution:
```dart
import '../lesson_007/get_user_input.dart';

void main(List<String> args) {
  // Name
  String userName = getUserInput<String>('Enter your name');

  // Age:
  int userAge = getUserInput<int>('Enter your age');

  // Height:
  double userHeight = getUserInput<double>('Enter your height');

  // Is the user a student:
  bool isUserStudent = getUserInput<bool>('Are you a student (yes, no)');
  print('''
Name: $userName\t${userName.runtimeType}
Age: $userAge\t${userAge.runtimeType}
Height: $userHeight\t${userHeight.runtimeType}
IsStudent: $isUserStudent\t${isUserStudent.runtimeType}
  ''');
}
```
\
&nbsp;
\
&nbsp;
\
&nbsp;

# **Project 0008: Multiplication Table App**
### *Package Name:* [multiply.dart](../lesson_008/multiply.dart)
## Description:
This creates multiplation tables for the requested numbers. 
## Steps:
## Solution:
```dart
import '../lesson_007/get_user_input.dart';

void main() {
  int numberInput = getUserInput('Enter a number');
  for (int number = 1; number <= numberInput; number++) {
    print('''

---------------------------------
Multiplication Table for $number;
----------------------------------
      ''');
    for (int multiplier = 1; multiplier <= numberInput; multiplier++) {
      print('$number * $multiplier = ${number * multiplier}');
    }
  }
}
```

\
&nbsp;
\
&nbsp;
\
&nbsp;
# **Project 0009: Guessing Game:**
### *Package Name:* [guessing_game.dart](../lesson_009/guessing_game.dart)
## Description:
This game has three levels, (easy, medium, hard). After the level is chosen by 
user, the user is asked to choose between 1-10, 1-50, or 1-100, based on the 
level chosen, repectively. Here is step by step explanation.

## Steps:
1. Ask the user to choose a level (easy, medium, hard)!
2. Loop until the user make a level input!
3. Store the user input in a variable named `chosenLevel` of type `String`!
4. Display the `chosenLevel` to the user!
5. Ask the user to guess a number between (1-10, 1-50 or 1-100, based on the level he/she is playing)
6. If the user guesses a wrong number display "Wrong Guess!"!
   1. Ask the user to guess another number!
7. if the user guesses a correct number, display "Correct, You won the game!" and terminate the game!


## Solution: 
```dart 
import 'dart:math';

import '../lesson_007/get_user_input.dart';

void main() {
  String chosenLevel = getUserInput('Enter Level (easy, medium, hard');
  print('Your chosen level is: $chosenLevel');
  if (chosenLevel == 'easy') {
    while (true) {
      int correctGuess = Random.secure().nextInt(11);
      int userInput = getUserInput('Guess a number between 0-10');
      if (correctGuess == userInput) {
        print("Congrats, you the game!");
        break;
      } else {
        print('Shame on you, try again');
      }
    }
  } else if (chosenLevel == 'medium') {
    while (true) {
      int correctGuess = Random.secure().nextInt(51);
      int userInput = getUserInput('Guess a number between 0-50');
      if (correctGuess == userInput) {
        print("Congrats, you the game!");
        break;
      } else {
        print('Shame on you, try again');
      }
    }
  } else if (chosenLevel == 'hard') {
    while (true) {
      int correctGuess = Random.secure().nextInt(101);
      int userInput = getUserInput('Guess a number between 0-100');
      if (correctGuess == userInput) {
        print("Congrats, you the game!");
        break;
      } else {
        print('Shame on you, try again');
      }
    }
  } else {
    print('Level not found');
  }
}
```

\
&nbsp;
\
&nbsp;
\
&nbsp;
# **Project 0010: Find and Replace App**
### *Package Name:* [finder.dart](../lesson_009/finder.dart)
## Description:
The app loads a loads a text file from memory based on the user's entered `filePath`. After the file is loaded the user can either `find` a specific word within the file, `replace` the found words with new ones, or `exit` the program when done. 
## Steps:
 1. Ask the user to input the file path!
 2. Store the input file path in a [variable] named [filePath] of type [String]!
 3. Try to fetch the file in [String] format!
 4. If the file content is empty terminate the program with an error message!
    *. Error Message: "Could not fetch the file. Perhaps it does not exit.
 5. If the file exits and is not empty display the content to the user!
 6. Inside a loop, ask the user to enter a command: find, replace, exit! 
 7. Store the user input in a variable named command of type [String]!
 8. If the user command is [exit] terminate the program!
 9. If the user command is [find] do the following: 
    1. Ask the user to input a word to search for!
    2. Store the user input in a variable named [query] of type [String]!
    3. Change the [fileContent] to [List<String>] by splitting it into its words!
    4. Store the generated string in a variable named [words] of type [List<String>]!
    5. Remove redundent punctuations from each word inside the variable [words]!
    6. Search for the matching instances of the [query] inside [words]!
    7. Store the found instances in a variable named [found] of type [List<String>]!
    8. Display the [query] found instances count!
    9. Display the file content with found [query] words in [(CAPSLOCK)]!
1.  If the user command is [replace] do the following:
    1.  Ask the user to input a word to search for!
    2.  Store the user input in a variable named [query] of type [String]!
    3.  Ask the user to input a word to replace with!
    4.  Store the replace input in a variable named [replace] of type [String]!
    5.  Replace all instances of the [query] within [fileContent]!
    6.  Store the replacement result inside a variable named [replaced] of type [String]!
    7.  Display the changes to the user using [replaced] variable!
    8.  Save the changes to the file using [replaced] variable!
    9.  Reload the file each time there is a replacement!

## Solution:
```dart
import 'dart:io';

import '../lesson_007/get_user_input.dart';

void main() {
  // Fetching File
  String filePath = getUserInput('Enter file path');
  String fileContent = fetchFileContent(filePath);
  if (fileContent.isEmpty) return;
  print(fileContent);

  /// Program
  while (true) {
    // Command
    String command = getUserInput('Enter a command (find, replace, exit)');
    if (command == 'exit') break;

    // Find Command:
    if (command == 'find') {
      fileContent = fetchFileContent(filePath);
      String query = getUserInput('What are you searching for');
      List<String> words = fileContent.split(' ');
      words = words.map((element) {
        String filtered = element.replaceAll('.', '');
        filtered = filtered.replaceAll(',', '');

        return filtered;
      }).toList();
      final instanceCount = words.where((e) => e == query).toList().length;
      print('''
-------------------------------------------------
Found instance of $query is $instanceCount.
      ''');
      words =
          words.map((e) => e == query ? "(${e.toUpperCase()})" : e).toList();
      print('''
-------------------------------------------------
${words.join(' ')}
      ''');
    }

    // Replace Command:
    if (command == 'replace') {
      fileContent = fetchFileContent(filePath);

      String searchWord = getUserInput('What are you searching for');
      print(searchWord);
      String replace = getUserInput('Enter the replacement');
      print('''

-------------------------------------------------
Before: 

$fileContent
-------------------------------------------------
      ''');
      final replacedContent = fileContent.replaceAll(searchWord, replace);
      print('''

-------------------------------------------------
After:

$replacedContent
-------------------------------------------------
      ''');
      File(filePath).writeAsStringSync(replacedContent);
    } else {
      print('Command not recognized');
    }
    fileContent = fetchFileContent(filePath);
  }
}

String fetchFileContent(String filePath) {
  try {
    var content = File(filePath).readAsStringSync();
    return content;
  } catch (_) {
    return '';
  }
}
```



# **Project 0011: Products Catalogue App**
### *Package Name: [products.dart](../lesson_009/products.dart)
## Description:
## Steps:
## Solution: 
```dart
import 'dart:convert';
import 'dart:io';

import '../lesson_007/get_user_input.dart';

const dbName = 'products.laams';
void main() {
  while (true) {
    var products = fetchProducts();
    String cmdMsg = 'Enter a command (add, list, update, get, delete, exit)';
    String command = getUserInput(cmdMsg);
    if (command == 'exit') break;
    if (command == 'add') {
      products = fetchProducts();
      var product = <String, dynamic>{};
      product['name'] = getUserInput<String>('Enter Product Name');
      product['price'] = getUserInput<double>('Enter Product Price');
      product['id'] = '${products.length + 1}';
      products.add(product);
      File(dbName).writeAsStringSync(jsonEncode(products));
    } else if (command == 'list') {
      products = fetchProducts();
      print('\n----------------------------------------------------------');
      if (products.isEmpty) print('No Products to show');
      for (var product in products) {
        print('''
ID:\t${product['id']}
Name:\t${product['name']}
Price:\t${product['price']}
        ''');
      }
      print('----------------------------------------------------------');
    } else if (command == 'update') {
      products = fetchProducts();
      String productID = getUserInput<String>('Enter Product ID');
      List<String> ids = products.map((e) => e['id'].toString()).toList();
      if (!ids.contains(productID)) {
        print('Product with $productID ID does not exist');
      } else {
        var product = products.firstWhere((e) => e['id'] == productID);
        print('''

----------------------------------------------------------------------
ID:\t${product['id']}
Name:\t${product['name']}
Price:\t${product['price']}
----------------------------------------------------------------------
        ''');
        product['name'] = getUserInput<String>('Enter New Product Name');
        product['price'] = getUserInput<double>('Enter New Product Price');
        products.removeWhere((e) => e['id'] == productID);
        products.add(product);
        File(dbName).writeAsStringSync(jsonEncode(products));
      }
    } else if (command == 'get') {
      products = fetchProducts();
      String productID = getUserInput<String>('Enter Product ID');
      List<String> ids = products.map((e) => e['id'].toString()).toList();
      if (!ids.contains(productID)) {
        print('Product with $productID ID does not exist');
      } else {
        var product = products.firstWhere((e) => e['id'] == productID);
        print('''

----------------------------------------------------------------------
ID:\t${product['id']}
Name:\t${product['name']}
Price:\t${product['price']}
----------------------------------------------------------------------
        ''');
      }
    } else if (command == 'delete') {
      products = fetchProducts();
      String productID = getUserInput<String>('Enter Product ID');
      List<String> ids = products.map((e) => e['id'].toString()).toList();
      if (!ids.contains(productID)) {
        print('Product with $productID ID does not exist');
      } else {
        products.removeWhere((e) => e['id'] == productID);
        File(dbName).writeAsStringSync(jsonEncode(products));
        print('Success fully delete the product with id $productID');
      }
    }
  }
}

List<Map<String, dynamic>> fetchProducts() {
  try {
    final data = File(dbName).readAsStringSync();
    return List<Map<String, dynamic>>.from(jsonDecode(data));
  } catch (e) {
    return [];
  }
}
```




# **Project 0012: Creating A Todo**
### *Package Name: [products.dart](../lesson_009/products.dart)
## Description:
## Steps:

