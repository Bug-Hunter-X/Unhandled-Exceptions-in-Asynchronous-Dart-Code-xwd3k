```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

class HttpException implements Exception {
  final String message;
  HttpException(this.message);
}

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Use jsonData
    } else {
      throw HttpException('Failed to load data. Status code: ${response.statusCode}');
    }
  } on HttpException catch (e) {
    print('HTTP Error: ${e.message}');
  } catch (e) {
    print('Other Error: $e');
    rethrow; 
  }
}
```