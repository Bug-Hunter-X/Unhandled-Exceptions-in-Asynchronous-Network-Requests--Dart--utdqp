```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>?> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);
        return jsonData;
      } catch (e) {
        print('Error decoding JSON: $e');
        // Consider returning null or a specific error object
        return null; 
      }
    } else {
      print('Request failed with status: ${response.statusCode}. Body: ${response.body}');
      //Handle Error differently based on status code if necessary 
      return null; // Or throw a custom exception
    }
  } catch (e) {
    print('Network Error: $e');
    // Consider using a more user-friendly message
    return null; // or rethrow;
  }
}
```