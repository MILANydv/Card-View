import 'package:flutter/material.dart';
import 'package:flutter_learning2/student_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Student> students = [
      Student(name: 'Milan', age: 22, image: 'assets/images/event2.jpg'),
      Student(name: 'John', age: 20, image: 'assets/images/event.jpeg'),
      Student(name: 'Mary', age: 21, image: 'assets/images/event2.jpg'),
      Student(name: 'Peter', age: 22, image: 'assets/images/event.jpeg'),
      Student(name: 'Sara', age: 23, image: 'assets/images/event2.jpg'),
    ];
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Card View'),
          elevation: 0,
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            // for (int i = 0; i < students.length; i++)
            // my method
            // displayCard(
            //     students[i].name.toString(), students[i].age.toString())
            // my method 2
            // displayCard(students[i])
            // my method 3

            ...students.map((student) => displayCard(student)).toList(),
          ],
        )));
  }
}

Widget displayCard(Student student) {
  return SizedBox(
    height: 200,
    width: double.infinity,
    child: Card(
      elevation: 5,
      color: const Color.fromARGB(255, 14, 13, 49),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           SizedBox(
              height: 100,
              width: double.infinity,
              child: Image.asset(student.image)),
          Text(
            "${student.name}",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          Text(
            "${student.age}",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ],
      ),
    ),
  );
}
