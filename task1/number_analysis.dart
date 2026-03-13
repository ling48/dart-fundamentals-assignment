int findMax(List<int> numbers) {
  int max = numbers[0];

  for (int num in numbers) {
    if (num > max) {
      max = num;
    }
  }

  return max;
}

// Find the minimum number
int findMin(List<int> numbers) {
  int min = numbers[0];

  for (int num in numbers) {
    if (num < min) {
      min = num;
    }
  }

  return min;
}

// Calculate the sum
int calculateSum(List<int> numbers) {
  int sum = 0;

  for (int num in numbers) {
    sum += num;
  }

  return sum;
}

// Calculate the average
double calculateAverage(List<int> numbers) {
  int sum = calculateSum(numbers);
  return sum / numbers.length;
}

void main() {
  final numbers = <int>[34, -7, 89, 12, -45, 67, 3, 100, -2, 55];

  int max = findMax(numbers);
  int min = findMin(numbers);
  int sum = calculateSum(numbers);
  double average = calculateAverage(numbers);

  print('Number Analysis Results');
  print('========================');
  print('Numbers: $numbers');
  print('Maximum value : $max');
  print('Minimum value : $min');
  print('Sum           : $sum');
  print('Average       : $average');
}

/*
Q1
List<int> stores only integers while List<dynamic> can store any type of data.
Typed lists are better because they prevent type errors and make code safer.

Q2
Initializing with the first element ensures the comparison starts with an actual
value from the list. If we start with 0 and all numbers are negative,
the result would be incorrect.

Q3
This shows code reuse and modular programming. Reusing functions avoids
duplicating code and makes programs easier to maintain.

Q4
A for-in loop goes through each element directly.
A traditional for loop uses an index.
For-in is simpler when the index is not needed.

Q5
If the list is empty the program crashes because numbers[0] doesn't exist.
We could fix it by checking if numbers.isEmpty and returning a default value.
*/
