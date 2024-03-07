import 'package:emp_management_system/Colors_Fonts/mainColors/mainColors.dart';
import 'package:emp_management_system/Themes/dark_theme.dart';
import 'package:flutter/material.dart';
import '../Colors_Fonts/Fonts/font.dart';
import 'Project/project_body.dart';
import 'Task/task_body.dart';

class ProjectTask extends StatefulWidget {
  const ProjectTask({Key? key}) : super(key: key);

  @override
  State<ProjectTask> createState() => _ProjectTaskState();
}

class _ProjectTaskState extends State<ProjectTask> {
  ProjectBody projectBody = ProjectBody();
  TaskBody taskBody = TaskBody();
  bool _showProjectBody = true;

  @override
  Widget build(BuildContext context) {
    Color enableColor = Theme.of(context).colorScheme.onSecondary;
    Color disableColor = Theme.of(context).colorScheme.surface;

    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                  height: 50, // Set the height to adjust the button size
                  child: ElevatedButton(
                    onPressed: () => _toggleBody(true, false),
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          _showProjectBody ? enableColor : disableColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                    ),
                    child: Text(
                      "Projects",
                      style: Fonts.google_fonts(context),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 50, // Set the height to adjust the button size
                  child: ElevatedButton(
                    onPressed: () => _toggleBody(false, true),
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          _showProjectBody ? disableColor : enableColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                    ),
                    child: Text(
                      "Tasks",
                      style: Fonts.google_fonts(context),
                    ),
                  ),
                ),
              ),
            ],
          ),

          // Body
          Expanded(
            child: _showProjectBody
                ? projectBody.buildProjectBody(context)
                : taskBody.buildTaskBody(context),
          ),
        ],
      ),
    );
  }

  void _toggleBody(bool showProjectBody, bool showTaskBody) {
    setState(() {
      _showProjectBody = showProjectBody;
    });
  }
}
