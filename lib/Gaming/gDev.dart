import 'package:flutter/material.dart';

class gDev extends StatefulWidget {
  const gDev({super.key});

  @override
  State<gDev> createState() => _gDevState();
}

class _gDevState extends State<gDev> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Developmental disability',style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),

      body: SingleChildScrollView(

        child: Column(

          children: <Widget> [
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 5),
                Container(
                  width: 190.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    border: Border.all(
                      color: Colors.grey,
                      width: 3.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Image.asset(
                    'images/dev (1).jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 10),

                Container(
                  width: 190.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(
                      color: Colors.grey,
                      width: 3.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Image.asset(
                    'images/dev (2).jpg',
                    fit: BoxFit.cover,
                  ),
                ),

              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 5),
                Container(
                  width: 190.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    border: Border.all(
                      color: Colors.grey,
                      width: 3.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Image.asset(
                    'images/dev (3).jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 10),

                Container(
                  width: 190.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(
                      color: Colors.grey,
                      width: 3.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Image.asset(
                    'images/dev (4).jpg',
                    fit: BoxFit.cover,
                  ),
                ),

              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 5),
                Container(
                  width: 190.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    border: Border.all(
                      color: Colors.grey,
                      width: 3.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Image.asset(
                    'images/dev (5).jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 10),

                Container(
                  width: 190.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(
                      color: Colors.grey,
                      width: 3.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Image.asset(
                    'images/dev (6).jpg',
                    fit: BoxFit.cover,
                  ),
                ),

              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 5),
                Container(
                  width: 190.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    border: Border.all(
                      color: Colors.grey,
                      width: 3.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Image.asset(
                    'images/dev (7).jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 10),

                Container(
                  width: 190.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(
                      color: Colors.grey,
                      width: 3.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Image.asset(
                    'images/dev (8).jpg',
                    fit: BoxFit.cover,
                  ),
                ),

              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 5),
                Container(
                  width: 190.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    border: Border.all(
                      color: Colors.grey,
                      width: 3.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Image.asset(
                    'images/dev (9).jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 10),

                Container(
                  width: 190.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(
                      color: Colors.grey,
                      width: 3.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Image.asset(
                    'images/dev (10).jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),


          ],
        ),
      ),

    );
  }
}
