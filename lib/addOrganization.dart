import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'parent.dart';

class addOrganization extends StatefulWidget {
  const addOrganization({super.key});

  @override
  State<addOrganization> createState() => _addOrganizationState();
}

class _addOrganizationState extends State<addOrganization> {
  List<String> itemsList = ['Autism','Cerebral Palsy','Visual impairment','Blindness','Down syndrome','ADHD','Epilepsy','Traumatisc brain injury','Intellectual disability','Physical disability','Dyslexia','Developmental disability','Speech or language impairment ','Hearing loss or deafness'];
  String? selectedItem = 'Autism';
  TextEditingController NameOrganizationtController = TextEditingController();
  TextEditingController NametypeofneedController = TextEditingController();
  TextEditingController emailOrganizationController = TextEditingController();
  TextEditingController addressorganizationController = TextEditingController();
  TextEditingController phonenumberController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  SingleChildScrollView(
        child:Column(
        children: <Widget>[
        const SizedBox(height: 50),
            Container(
              padding: const EdgeInsets.only(left:118),
              width: double.infinity,
              height: 70,
              color: Colors.white,
              child: const Text("Add Organization",style: TextStyle(fontSize: 26,color: Colors.purple,fontWeight: FontWeight.bold),
              ),
        ),
          const Padding(
            padding:  EdgeInsets.only(right: 190),
            child:  Text(
              "Name Organization",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 12),
          Container(
            height: 45,
            padding: const EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(30),
            ),
            child: TextField(
              controller: NameOrganizationtController,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: '',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left:15),
            width: double.infinity,
            height: 40,
            color: Colors.white,
            child: const Text("Type of special Need:",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
            ),
          ),
          TextField(
            controller: NametypeofneedController,
          ),
          DropdownButton<String>(
            value: selectedItem,
            icon: const Icon(Icons.arrow_downward),
            iconSize: 24,
            elevation: 16,
            style: const TextStyle(color: Colors.black),
            onChanged: (String? newValue) {
              setState(() {
                selectedItem = newValue!;
              });
            },

            items: itemsList.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding:  EdgeInsets.only(right: 320),
            child:  Text(
              "E-Mail",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 12),
          Container(
            height: 45,
            padding: const EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(30),
            ),
            child: TextField(
              controller: emailOrganizationController,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: '',
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding:  EdgeInsets.only(right: 310),
            child:  Text(
              "Address",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 12),
          Container(
            height: 45,
            padding: const EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(30),
            ),
            child: TextField(
              controller: addressorganizationController,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: '',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left:5),
            width: double.infinity,
            height: 40,
            color: Colors.white,
            child: Text("Phone Number",style: TextStyle(fontSize: 22,color: Colors.black,fontWeight: FontWeight.bold),
            ),
          ),
          TextField(
            controller: phonenumberController,  // Assign controller to TextField
            keyboardType: TextInputType.number,  // Set keyboardType to number
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],  // Allow only digits
          ),
          const SizedBox(height: 30),

          ElevatedButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Parent()));
          },child: const Padding(
            padding:  EdgeInsets.all(12.0),
            child:  Text("Submit",style: TextStyle(fontSize: 20,color: Colors.black),),
          )),
          const SizedBox(height: 20),

        ],
        ),
        ),
    );
  }
}
