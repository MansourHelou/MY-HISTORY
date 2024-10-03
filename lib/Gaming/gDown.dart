import 'package:flutter/material.dart';


class gDown extends StatefulWidget {
  const gDown({super.key});

  @override
  State<gDown> createState() => _gDownState();
}

class _gDownState extends State<gDown> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Down Syndrome',style: TextStyle(fontWeight: FontWeight.bold),),
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
                    'images/down (1).jpg',
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
                    'images/down (2).jpg',
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
                    'images/down (3).jpg',
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
                    'images/down (4).jpg',
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
                    'images/down (5).jpg',
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
                    'images/down (6).jpg',
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
                    'images/down (7).jpg',
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
                    'images/down (8).jpg',
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
                    'images/down (9).jpg',
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
                    'images/down(10).jpg',
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

