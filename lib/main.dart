import 'package:flutter/material.dart';
import 'package:profile_app/Degree.dart';
import 'package:profile_app/Project.dart';
import 'package:profile_app/elements/DegreeView.dart';
import 'package:profile_app/elements/ProjectsViewWidgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My Profile',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> skillList = [
    "Android",
    "Flutter",
    "Java",
    "Dart",
    "Restfull API",
    "XML",
    "JSON",
    "XML",
    "Firebase",
    "Git",
    "Sockets"
  ];

  List<Degree> degreeList = <Degree>[];
  List<Project> projectList = <Project>[];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    degreeList.clear();
    projectList.clear();
    degreeList.add(Degree(
        "BS-Software Engineering", "University of Karachi", "2016-2019"));
    degreeList
        .add(Degree("Intermediate", "Govt College of Sci & Comm", "2012-2014"));
    degreeList.add(Degree("Metric", "Beacon Askari", "2010-2012"));

    projectList.add(Project("Fatafut :", "Ecom Application"));
    projectList.add(Project("Fatafut Rider :", "Rider app for service"));
    projectList.add(Project("Blink :", "Car booking app"));
    projectList.add(Project("Blink Rider:", "driver application"));

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(5),
          padding: const EdgeInsets.all(5),
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 120,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    children: [
                      // image container
                      Container(
                          margin: EdgeInsets.all(5),
                          width: 60,
                          height: 60,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1547721064-da6cfb341d50?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
                            ),
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      // intro's column
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                              textAlign: TextAlign.start,
                              'Zohaib Amjad',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                              textAlign: TextAlign.start,
                              'Mobile Application Developer',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                              'Analytical and detail-oriented Mobile App developer professional',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.normal)),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: size.height * 0.8,
                  width: size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // left column
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.phone_android_rounded,
                            size: 15,
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text('03XXXXXX'),
                          SizedBox(
                            height: 4,
                          ),
                          Icon(
                            Icons.email_rounded,
                            size: 15,
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text('zohaib*******.com'),
                          SizedBox(
                            height: 4,
                          ),
                          Icon(
                            Icons.house_rounded,
                            size: 15,
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text('C-117,  st-4********'),

                          SizedBox(
                            height: 20,
                          ),
                          // insert sized box here
                          Text('Skills:',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              )),
                          const SizedBox(
                            width: 50,
                            child: Divider(
                              color: Colors.red,
                              thickness: 1.0,
                            ),
                          ),
                          Container(
                            height: size.height * 0.3,
                            width: size.width * 0.3,

                            /*   child:GridView.count(
                                crossAxisCount: 2,
                                crossAxisSpacing: 1.0,
                                mainAxisSpacing: 1.0,
                                children: List.generate(
                                skillList.length, (index) {
                                  return Card(

                                    color: Colors.blueGrey ,
                                    elevation: 4.0,
                                    child: Padding(
                                      padding:  EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Text(skillList[index]),
                                        ],
                                      ),
                                    ),
                                  );

                                }
                                )
                            ),*/
                            child: GridView.builder(
                                itemCount: skillList.length,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  childAspectRatio: 1.4,
                                  crossAxisSpacing: 1.0,
                                  mainAxisSpacing: 1.0,
                                ),
                                itemBuilder: (context, index) {
                                  return Card(
                                    color: Colors.blueGrey,
                                    elevation: 1.0,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(skillList[index]),
                                      ],
                                    ),
                                  );
                                }),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      //right column
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Education',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            width: 80,
                            child: Divider(
                              color: Colors.red,
                              thickness: 1.0,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Container(
                            height: 100,
                            width: size.width * 0.6,
                            child: ListView.builder(
                                itemCount: degreeList.length,
                                scrollDirection: Axis.vertical,
                                //scrollDirection: Axis.horizontal,
                                itemBuilder: (BuildContext context, int index) {
                                  return DegreeViewWidget(
                                      degreeList.elementAt(index));
                                }),
                          ),
                          SizedBox(
                            height: 14,
                          ),
                          const Text('Experience',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              )),
                          const SizedBox(
                            width: 80,
                            child: Divider(
                              color: Colors.red,
                              thickness: 1.0,
                            ),
                          ),
                          const Text('Evantagesoft Pvt Ltd',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              )),
                          const Text('(2020-Present)',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                              )),
                          SizedBox(
                            height: 4,
                          ),
                          const Text('Projects:',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              )),
                          SizedBox(
                            height: 4,
                          ),
                          Container(
                            height: 150,
                            width: size.width * 0.6,
                            child: ListView.builder(
                                itemCount: projectList.length,
                                scrollDirection: Axis.vertical,
                                //scrollDirection: Axis.horizontal,
                                itemBuilder: (BuildContext context, int index) {
                                  return ProjectViewWidget(
                                      projectList.elementAt(index));
                                }),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
