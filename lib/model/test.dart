import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<String>> fetchProjectNames() async {
  final response = await http.get(
      Uri.parse('https://mocki.io/v1/54ea5218-8c2d-4daa-8e6a-860e09048f7f'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON and extract project names.
    List<String> projectNames = extractProjectNames(response.body);
    return projectNames;
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load project names');
  }
}

List<String> extractProjectNames(String jsonData) {
  List<String> projectNames = [];

  try {
    Map<String, dynamic> jsonMap = jsonDecode(jsonData);

    if (jsonMap.containsKey('Project')) {
      List<dynamic> projects = jsonMap['Project'];

      for (var project in projects) {
        if (project.containsKey('project_name')) {
          projectNames.add(project['project_name']);
        }
      }
    }
  } catch (e) {
    print('Error extracting project names: $e');
  }

  return projectNames;
}

class Album {
  final String project_name;
  final String due_date;
  final String members;

  const Album({
    required this.project_name,
    required this.due_date,
    required this.members,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      project_name: json['project_name'] as String,
      due_date: json['due_date'] as String,
      members: json['members'] as String,
    );
  }
}
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['project_name'] = this.projectName;
//     data['due_date'] = this.dueDate;
//     data['members'] = this.members;
//     return data;
//   }
// }
