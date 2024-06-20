import 'dart:io';

import 'package:core_flutter_exam/Utils/Globle.dart';
import 'package:core_flutter_exam/componetns/Homepage/HomeScreen.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Details',style: TextStyle(color: Colors.blue),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            GestureDetector(
              child: CircleAvatar(
                radius: 60,
                foregroundImage:
                fileImage != null ? FileImage(File(fileImage!.path)) : null,
              ),
            ),
            InkWell(
                onTap: () {
                  setState(() {
                    fileImage = null;
                  });
                },
                child: const Text("Remove")),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: Student_data("Enter grid", txtId),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: Student_data("Enter name", txtName),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: Student_data("Enter Std", txtStd),
            ),
            const SizedBox(height: 100),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  File? image;
                  Map tempMap = {
                    'image': image,
                    'studentGrid': txtId,
                    'studentName': txtName,
                    'studentStd': txtStd,
                  };
                  studentList.add(tempMap);
                  Navigator.of(context).pushReplacementNamed('/data');
                });
              },
              child: const Text(
                'Submit',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container Student_data(String name, TextEditingController controller) {
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(20),
          labelText: name,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          labelStyle: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
