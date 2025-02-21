```dart
import 'dart:async';

Future<void> fetchData() async {
  try {
    // Simulate an error
    await Future.delayed(Duration(seconds: 2));
    throw Exception('Network request failed');
  } catch (e, stacktrace) {
    // Handle the error
    print('Error: $e');
    print('Stacktrace: $stacktrace');
    rethrow; 
  }
}

void main() async {
  try {
    await fetchData();
    print('Data fetched successfully');
  } on Exception catch (e) {
      print('Exception caught: $e');
  } catch (e, stacktrace) {
    print('Failed to fetch data: $e');
    print('Stacktrace: $stacktrace');
  }
}
```