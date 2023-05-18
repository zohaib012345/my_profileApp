import 'package:flutter/cupertino.dart';
import 'package:profile_app/Degree.dart';

class DegreeViewWidget extends StatelessWidget{
  const DegreeViewWidget(this.degree, {super.key});
  final Degree degree;

  @override
  Widget build(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,

    children: [
    Container(
      child: Text(
        degree.degreeName,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold

          ),
        overflow: TextOverflow.ellipsis,
      ),
    ),
    Container(
        child: Row(
          children: [
            Text(
              degree.instituteName,

            ),
          ],
        ),
      ),
      Text(
        '(${degree.duration})',

      ),
      SizedBox(
        height: 3,
      ),
    ],
  );
  }

}