```dart
import 'dart:async';

Future<void> fetchData() async {
  try {
    // Simulate an error
    await Future.delayed(Duration(seconds: 2));
    throw Exception('Network request failed');
  } catch (e) {
    // Handle the error
    print('Error: $e');
    rethrow; // Re-throw to allow the calling function to handle it 
  }
}

void main() async {
  try {
    await fetchData();
    print('Data fetched successfully');
  } catch (e) {
    print('Failed to fetch data: $e');
  }
}
```