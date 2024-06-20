import 'package:core_flutter_exam/Utils/Globle.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

ImagePicker imagePicker = ImagePicker();
File? fileImage;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Student Data',style: TextStyle(color: Colors.blue),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 35),
              height: 110,
              width: 110,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                image: (fileImage != null)
                    ? DecorationImage(
                        image: FileImage(fileImage!),
                      )
                    : null,
                border: Border.all(width: 1, color: Colors.grey),
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      fileImage = null;
                    });
                  },
                  child: const Text(
                    "Remove",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 90, top: 10),
                  child: IconButton(
                    onPressed: () async {
                      XFile? xFileImage = await imagePicker.pickImage(
                          source: ImageSource.camera);
                      setState(() {
                        fileImage = File(xFileImage!.path);
                      });
                    },
                    icon: const Icon(
                      Icons.camera_alt,
                      size: 30,
                      color: Colors.black87,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 90, top: 10),
                      child: IconButton(
                        onPressed: () async {
                          XFile? xFileImage = await imagePicker.pickImage(
                              source: ImageSource.gallery);
                          setState(() {
                            fileImage = File(xFileImage!.path);
                          });
                        },
                        icon: const Icon(
                          Icons.image,
                          size: 30,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextFormField(
                controller: txtId,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.phone,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  label: const Text(
                    'ID',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextFormField(
                controller: txtName,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.name,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  label: const Text(
                    'Name',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextFormField(
                controller: txtStd,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.number,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  label: const Text(
                    'Std',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {},
              child: InkWell(
                onTap: () {
                  setState(() {
                    Navigator.of(context).pushNamed('/Detail');
                  });
                },
                child: const Text(
                  'Submit',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.blue),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
