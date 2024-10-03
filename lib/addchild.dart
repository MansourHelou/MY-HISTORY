import 'package:flutter/material.dart';
import 'package:sample/organization.dart';
import 'package:flutter/services.dart';

class addchild extends StatefulWidget {
  const addchild({super.key});

  @override
  State<addchild> createState() => _addchildState();
}

class _addchildState extends State<addchild> {
  List<String> itemsList = ['Autism','Cerebral Palsy','Visual impairment','Blindness','Down syndrome','ADHD','Epilepsy','Traumatisc brain injury','Intellectual disability','Physical disability','Dyslexia','Developmental disability','Speech or language impairment ','Hearing loss or deafness'];
  String? selectedItem = 'Autism';
  String? selectedGender;
  DateTime? selectedDate;
  TextEditingController NameparentController = TextEditingController();
  TextEditingController NameofchildController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController needsController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController typeController = TextEditingController();
  TextEditingController dateofbirthController = TextEditingController();
  TextEditingController additionalinfornationController = TextEditingController();


  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
      child:Column(
            children: <Widget>[
        const SizedBox(height: 40),
        Container(
          padding: const EdgeInsets.only(left:138),
          width: double.infinity,
          height: 70,
          color: Colors.white,
          child: const Text("Add Child",style: TextStyle(fontSize: 26,color: Colors.purple,fontWeight: FontWeight.bold),
          ),
        ),
               const Padding(
                padding:  EdgeInsets.only(right: 280),
                child:  Text(
                  "Name",
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
                  controller: NameparentController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: '',
                  ),
                ),
              ),


      Container(
        padding: const EdgeInsets.only(left:25),
        width: double.infinity,
        height: 40,
        color: Colors.white,
        child: const Text("Type of special Need:",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
        ),
      ),
              TextField(
                controller: typeController,
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
        Container(
          padding: const EdgeInsets.only(left:25),
          width: double.infinity,
          height: 40,
          color: Colors.white,
          child: const Text("Gender:",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
          ),
        ),
              TextField(
                controller: genderController,
              ),
          Row(
            children: [
              Checkbox(
                value: selectedGender == 'Male',
                onChanged: (bool? value) {
                  setState(() {
                    selectedGender = value! ? 'Male' : null;
                  });
                },
              ),
              const Text('Male'),
              Checkbox(
                value: selectedGender == 'Female',
                onChanged: (bool? value) {
                  setState(() {
                    selectedGender = value! ? 'Female' : null;
                  });
                },
              ),
             const  Text('Female'),
            ],

          ),

        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.only(left:25),
          width: double.infinity,
          height: 40,
          color: Colors.white,
          child: const Text("Date of Birthday:",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
          ),
        ),
              TextField(
                controller: dateofbirthController,
              ),
              TextButton(
                onPressed: () => _selectDate(context),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.grey[300], // Set background color to grey
                ),
                child: Text(
              selectedDate != null
                  ? "${selectedDate!.toLocal()}".split(' ')[0]
                  : 'Select date',
              style:const  TextStyle(
                fontSize: 25,
                color: Colors.black,
              ),

            ),
          ),
              const SizedBox(height: 20),
              const Padding(
                padding:  EdgeInsets.only(right:  140),
                child:  Text(
                  "Name of cocerned person",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
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
                  controller: NameofchildController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: '',
                  ),
                ),
              ),
             const SizedBox(height: 20),


              const Padding(
                padding:  EdgeInsets.only(right: 280),
                child:  Text(
                  "The Needs",
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
                  controller: needsController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: '',
                  ),
                ),
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
                  controller: emailController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: '',
                  ),
                ),
              ),
              const SizedBox(height: 20),

              Container(
                padding: const EdgeInsets.only(left:5),
                width: double.infinity,
                height: 40,
                color: Colors.white,
                child: Text("Phone Number",style: TextStyle(fontSize: 22,color: Colors.black,fontWeight: FontWeight.bold),
                ),
              ),
              TextField(
                controller: _phoneController,  // Assign controller to TextField
                keyboardType: TextInputType.number,  // Set keyboardType to number
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],  // Allow only digits
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
                  controller: addressController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: '',
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding:  EdgeInsets.only(right: 200),
                child:  Text(
                  "Additional Information",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
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
                  controller: additionalinfornationController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: '',
                  ),
                ),
              ),

              const SizedBox(height: 10),

              ElevatedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Organization()));
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