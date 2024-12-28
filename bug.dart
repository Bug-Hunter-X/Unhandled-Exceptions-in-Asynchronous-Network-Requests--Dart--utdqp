```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success! Parse the JSON response
      final jsonData = jsonDecode(response.body);
      // Access data
      print(jsonData['someKey']);
    } else {
      // Handle error
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions
    print('Error fetching data: $e');
    // Consider rethrowing the exception to be handled by a higher level
    rethrow;
  }
}
```