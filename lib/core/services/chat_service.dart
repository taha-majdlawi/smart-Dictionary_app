import 'dart:convert';
import 'package:http/http.dart' as http;

class ChatService {
  final String serverUrl;

  ChatService({required this.serverUrl});


  Future<String> sendMessage(String userId, String message) async {
    try {
      final response = await http.post(
        Uri.parse(serverUrl),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({"user_id": userId, "message": message}),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return data["reply"] ?? "No response";
      } else {
        return "Error: ${response.statusCode}";
      }
    } catch (e) {
      return "Connection error: $e";
    }
  }
}
