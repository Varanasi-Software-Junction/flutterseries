import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

void main() async {
//   String completeurl =
//       "https://gist.githubusercontent.com/TheSanvi/5cf07f06a291742690b9e9d62bb8ebde/raw/e071f925ed46bc5a2fa33ce1f3ca065e4c967336/data.json";

  final url = Uri.https(
      "gist.githubusercontent.com",
      "/TheSanvi/5cf07f06a291742690b9e9d62bb8ebde/raw/e071f925ed46bc5a2fa33ce1f3ca065e4c967336/data.json",
      {});

  final response = await http.get(url);

  print(response);
  print(response.statusCode);
  final jsonResponse = response.body;
  print(jsonResponse);
  Map<String, dynamic> json = convert.jsonDecode(jsonResponse);
  print(json);

  Person person = Person.fromJson(json);

  print(person.name); // Output: Popat
  print(person.age); // Output: 30
  print(person.roll_no); // Output: 24
}

class Person {
  String name;
  int age, roll_no;

  Person(this.name, this.age, this.roll_no);

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(json['name'], json['age'], json["roll_no"]);
  }
}
