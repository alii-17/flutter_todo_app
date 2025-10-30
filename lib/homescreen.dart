import 'package:flutter/material.dart';
import 'package:ali/buttonsheet.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (BuildContext context) {
              return Buttonsheet();
            },
          );
        },
        backgroundColor: Color.fromRGBO(0, 122, 225, 1),
        child: Icon(Icons.add, color: Colors.white),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.task_alt),
            label: "Completed",
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(width: double.infinity, height: 20),
            Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Good Morning, Ali',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color.fromRGBO(9, 9, 9, 1),
                    ),
                  ),
                  Text(
                    'Monday, July 14',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromRGBO(153, 153, 153, 1),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: double.infinity, height: 5),
            Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'My Day Progress',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Container(
                        width: 300,
                        height: 8,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(43, 127, 255, 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: 150,
                          height: 8,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(226, 232, 240, 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Text(
                    '6/10 Tasks Completed',
                    style: TextStyle(color: Color.fromRGBO(144, 161, 185, 1)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10,
                          offset: Offset(0, 5),
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    alignment: Alignment.topLeft,
                    width: double.infinity,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tasks',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Icon(
                              Icons.check_box_outline_blank,
                              color: Colors.grey,
                            ),
                            SizedBox(width: 25),
                            Text(
                              'Design New UI For Dashboard',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(27, 31, 38, 0.72),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(
                              Icons.check_box_outline_blank,
                              color: Colors.grey,
                            ),
                            SizedBox(width: 25),
                            Text(
                              'Design New UI For Dashboard',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(27, 31, 38, 0.72),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(Icons.check_box, color: Colors.blue),
                            SizedBox(width: 25),
                            Text(
                              'Design New UI For Dashboard',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(27, 31, 38, 0.72),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(
                              Icons.check_box_outline_blank,
                              color: Colors.grey,
                            ),
                            SizedBox(width: 25),
                            Text(
                              'Design New UI For Dashboard',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(27, 31, 38, 0.72),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(
                              Icons.check_box_outline_blank,
                              color: Colors.grey,
                            ),
                            SizedBox(width: 25),
                            Text(
                              'Design New UI For Dashboard',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(27, 31, 38, 0.72),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(Icons.check_box, color: Colors.blue),
                            SizedBox(width: 25),
                            Text(
                              'Design New UI For Dashboard',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(27, 31, 38, 0.72),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(Icons.check_box, color: Colors.blue),
                            SizedBox(width: 25),
                            Text(
                              'Design New UI For Dashboard',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(27, 31, 38, 0.72),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(
                              Icons.check_box_outline_blank,
                              color: Colors.grey,
                            ),
                            SizedBox(width: 25),
                            Text(
                              'Design New UI For Dashboard',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(27, 31, 38, 0.72),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(Icons.check_box, color: Colors.blue),
                            SizedBox(width: 25),
                            Text(
                              'Design New UI For Dashboard',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(27, 31, 38, 0.72),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(
                              Icons.check_box_outline_blank,
                              color: Colors.grey,
                            ),
                            SizedBox(width: 25),
                            Text(
                              'Design New UI For Dashboard',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(27, 31, 38, 0.72),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(
                              Icons.check_box_outline_blank,
                              color: Colors.grey,
                            ),
                            SizedBox(width: 25),
                            Text(
                              'Design New UI For Dashboard',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(27, 31, 38, 0.72),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(
                              Icons.check_box_outline_blank,
                              color: Colors.grey,
                            ),
                            SizedBox(width: 25),
                            Text(
                              'Design New UI For Dashboard',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(27, 31, 38, 0.72),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
