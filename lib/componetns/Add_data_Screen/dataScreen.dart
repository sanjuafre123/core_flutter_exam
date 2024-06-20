
import 'package:core_flutter_exam/Utils/Globle.dart';
import 'package:flutter/material.dart';

class DataScreen extends StatefulWidget {
  const DataScreen({super.key});

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            state = {
              'name' : txtId.text,
              'std' : txtName.text,
              'grid' : txtStd.text,
            };
          });
          studentList.add(state);

        },
        child: const Icon(
          Icons.add,
          color: Colors.black,
          size: 28,
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text('Add Data Screen'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.black, width: 1)),
              child: Container(
                margin: const EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      '5940',
                      style: TextStyle(),
                    ),
                    const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Row(
                            children: [
                              Text('    sanju'),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Text('12'),
                          ],
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Column(
                              children: [
                                const Text(
                                  'Updata dialogBox',
                                  style: TextStyle(fontSize: 20),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'Grid',
                                    contentPadding: const EdgeInsets.all(20),
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
                                const SizedBox(height: 10,),
                                TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'Name',
                                    contentPadding: const EdgeInsets.all(20),
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
                                const SizedBox(height: 10,),
                                TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'Std',
                                    contentPadding: const EdgeInsets.all(20),
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
                                const SizedBox(height: 10,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text('cancle',style: TextStyle(fontSize: 20),)
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(left: 175),
                        child: Row(
                          children: [
                            Icon(Icons.edit),
                          ],
                        ),
                      ),
                    ),
                    const Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
