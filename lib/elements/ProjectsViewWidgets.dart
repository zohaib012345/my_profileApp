import 'package:flutter/cupertino.dart';
import 'package:profile_app/Degree.dart';
import 'package:profile_app/Project.dart';

class ProjectViewWidget extends StatelessWidget{
  const ProjectViewWidget(this.project, {super.key});
  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: Row(
              children: [
                Text(
                  '${project.projectName} ',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold
                  )
                ),
                Text(
                  project.projectDescription,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 3,
          ),
        ],
      ),
    );
  }

}