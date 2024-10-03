import 'package:flutter/material.dart';

class gIntellectual extends StatefulWidget {
  const gIntellectual({super.key});

  @override
  State<gIntellectual> createState() => _gIntellectualState();
}

class _gIntellectualState extends State<gIntellectual> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Autism',style: TextStyle(fontWeight: FontWeight.bold),),
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
                    'images/intellectual (1).jpg',
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
                    'images/intellectual (2).jpg',
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
                    'images/intellectual (3).jpg',
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
                    'images/intellectual (4).jpg',
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
                    'images/intellectual (5).jpg',
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
                    'images/intellectual (6).jpg',
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
                    'images/intellectual (7).jpg',
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
                    'images/intellectual (8).jpg',
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
                    'images/intellectual (9).jpg',
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
                    'images/intellectual (10).jpg',
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
