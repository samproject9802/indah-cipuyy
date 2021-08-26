import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:quiz_app/screens/materi.dart';
import 'package:quiz_app/screens/quiz/quiz_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Quiz App',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData.dark(),
      home: MenuUtama(),
    );
  }
}

class MenuUtama extends StatefulWidget {
  const MenuUtama({Key key}) : super(key: key);

  @override
  _MenuUtamaState createState() => _MenuUtamaState();
}

class _MenuUtamaState extends State<MenuUtama> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Color.fromRGBO(241, 208, 107, 1),
          ),
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "APLIKASI PEMBELAJARAN ONLINE",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () => {Get.to(MateriSubject())},
                        child: Container(
                          width: (MediaQuery.of(context).size.width) - 250,
                          height: ((MediaQuery.of(context).size.height) -
                                  (MediaQuery.of(context).size.width)) -
                              250,
                          child: Card(
                            child: Column(
                              children: [
                                Expanded(
                                  child: Image.asset('assets/icons/materi.png'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text(
                                    "Materi",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromRGBO(241, 208, 107, 1),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () => {Get.to(QuizScreen())},
                        child: Container(
                          width: (MediaQuery.of(context).size.width) - 250,
                          height: ((MediaQuery.of(context).size.height) -
                                  (MediaQuery.of(context).size.width)) -
                              250,
                          child: Card(
                            child: Column(
                              children: [
                                Expanded(
                                  child: Image.asset('assets/icons/quiz.png'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text(
                                    "Quiz",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromRGBO(241, 208, 107, 1),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
