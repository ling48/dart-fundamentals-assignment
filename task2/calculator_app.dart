// Task 2: Async Calculator App
// Name: Yassin Rahmeto Mohammed

import 'dart:async';

class Calculator {
  final String name;

  Calculator(this.name);

  double add(double a, double b) => a + b;

  double subtract(double a, double b) {
    return a - b;
  }

  double multiply(double a, double b) {
    return a * b;
  }

  double divide(double a, double b) {
    if (b == 0) {
      throw ArgumentError('Cannot divide by zero.');
    }
    return a / b;
  }

  Future<double> computeAsync(double a, double b, String op) async {
    double result;

    switch (op) {
      case 'add':
        result = add(a, b);
        break;

      case 'subtract':
        result = subtract(a, b);
        break;

      case 'multiply':
        result = multiply(a, b);
        break;

      case 'divide':
        result = divide(a, b);
        break;

      default:
        throw ArgumentError('Unknown operation: $op');
    }

    await Future.delayed(Duration(milliseconds: 1500));

    return result;
  }

  Future<void> displayResult(double a, double b, String op) async {
    try {
      final result = await computeAsync(a, b, op);
      print('$op($a, $b) = $result');
    } catch (e) {
      print('Error: $e');
    }
  }
}

Future<void> main() async {
  final calc = Calculator('MyCalculator');

  print('--- ${calc.name} ---');

  await calc.displayResult(10, 4, 'add');
  await calc.displayResult(10, 4, 'subtract');
  await calc.displayResult(10, 4, 'multiply');
  await calc.displayResult(10, 4, 'divide');
  await calc.displayResult(15, 3, 'divide');
  await calc.displayResult(10, 0, 'divide');

  print('All calculations complete.');
}

/*
Q6
Synchronous functions run immediately and return results directly.
Asynchronous functions return a Future and may take time.
divide() is synchronous while computeAsync() simulates delayed operations.

Q7
await pauses execution until the Future completes.
Without await the program prints a Future object instead of the result.

Q8
try-catch prevents the program from crashing when an error occurs.
Without it, dividing by zero would terminate the program.

Q9
Throwing an error allows the caller to decide how to handle it.
This follows good function design and separation of concerns.

Q10
The async keyword allows main() to use await for asynchronous operations.
Without async we would need to handle Futures differently.
*/
