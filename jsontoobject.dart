import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

void main() async {
  String completeurl =
      "https://gist.githubusercontent.com/TheSanvi/5cf07f06a291742690b9e9d62bb8ebde/raw/e071f925ed46bc5a2fa33ce1f3ca065e4c967336/data.json";

  final url = Uri.https(
      "gist.githubusercontent.com",
      "/TheSanvi/5cf07f06a291742690b9e9d62bb8ebde/raw/e071f925ed46bc5a2fa33ce1f3ca065e4c967336/data.json",
      {});

  final response = await http.get(url);

  print(response);
  print(response.statusCode);
  final jsonResponse = response.body;
  print(jsonResponse);
}
