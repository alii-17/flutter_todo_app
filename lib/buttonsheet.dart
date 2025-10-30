import 'package:flutter/material.dart';

class Buttonsheet extends StatefulWidget {
  const Buttonsheet({super.key});

  @override
  State<Buttonsheet> createState() => _ButtonsheetState();
}

class _ButtonsheetState extends State<Buttonsheet> {
  String selectedPriority = 'Low';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Center(
              child: Container(
                height: 6,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(217, 217, 217, 1),
                ),
              ),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Add Task',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      color: Color.fromRGBO(9, 9, 9, 1),
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'What do you want to do?',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(9, 9, 9, 1),
                    ),
                  ),
                  SizedBox(height: 5),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'e.g. Finish Design system',
                      labelStyle: TextStyle(
                        color: Color.fromRGBO(179, 179, 179, 1),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Date',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(9, 9, 9, 1),
                    ),
                  ),
                  SizedBox(height: 5),
                  TextField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.calendar_month_outlined,
                        color: Color.fromRGBO(136, 136, 136, 1),
                      ),
                      labelText: 'mm/dd/yyyy',
                      labelStyle: TextStyle(
                        color: Color.fromRGBO(18, 18, 18, 1),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Priority',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(9, 9, 9, 1),
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              selectedPriority = 'Low';
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: selectedPriority == 'Low'
                                ? Color.fromRGBO(207, 247, 211, 1)
                                : Colors.white,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: EdgeInsets.symmetric(vertical: 20),
                          ),
                          child: Text(
                            'Low',
                            style: selectedPriority == 'Low'
                                ? TextStyle(
                                    color: Color.fromRGBO(52, 199, 89, 1),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  )
                                : TextStyle(color: Colors.black, fontSize: 16),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              selectedPriority = 'Medium';
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: selectedPriority == 'Medium'
                                ? Color.fromRGBO(255, 149, 0, 0.2)
                                : Colors.white,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: EdgeInsets.symmetric(vertical: 20),
                          ),
                          child: Text(
                            'Medium',
                            style: selectedPriority == 'Medium'
                                ? TextStyle(
                                    color: Color.fromRGBO(255, 149, 0, 1),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  )
                                : TextStyle(color: Colors.black, fontSize: 16),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              selectedPriority = 'High';
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: selectedPriority == 'High'
                                ? Color.fromRGBO(255, 59, 48, 0.2)
                                : Colors.white,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: EdgeInsets.symmetric(vertical: 20),
                          ),
                          child: Text(
                            'High',
                            style: selectedPriority == 'High'
                                ? TextStyle(
                                    color: Color.fromRGBO(255, 59, 48, 1),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  )
                                : TextStyle(color: Colors.black, fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Tags',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(9, 9, 9, 1),
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 90,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(207, 247, 211, 1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Work',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(52, 199, 89, 1),
                                ),
                              ),
                              Icon(
                                Icons.clear,
                                color: Color.fromRGBO(52, 199, 89, 1),
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 110,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(207, 247, 211, 1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'University',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(52, 199, 89, 1),
                                ),
                              ),
                              Icon(
                                Icons.clear,
                                color: Color.fromRGBO(52, 199, 89, 1),
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 120,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(207, 247, 211, 1),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Personal',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(52, 199, 89, 1),
                                ),
                              ),
                              Icon(
                                Icons.clear,
                                color: Color.fromRGBO(52, 199, 89, 1),
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 140,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(217, 217, 217, 0.3),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.add,
                                color: Color.fromRGBO(27, 31, 38, 0.72),
                                size: 25,
                              ),
                              Text(
                                'Add Tags',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(27, 31, 38, 0.72),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                  Center(
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(0, 122, 255, 1),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Add Task',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
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
