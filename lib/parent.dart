import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:sample/edit_profile.dart';
import 'package:sample/services/functions_services.dart';
import 'package:sample/type.dart';
import 'addchild.dart';
import 'main.dart';

class Parent extends StatefulWidget {
  const Parent({super.key});

  @override
  State<Parent> createState() => _ParentState();
}

class _ParentState extends State<Parent> {
  TextEditingController nameController = TextEditingController();
  TextEditingController nameConcernedController = TextEditingController();
  TextEditingController needsController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController addressAdditionalController = TextEditingController();
  int selectedGender = 0;

  bool load = false;
  bool loader = false;

  String selectedType = '';
  int? _value = -1;
  String searchValue = '';
  final List<String> typeNeeds = [
    'Autism',
    'Cerebral Palsy',
    'Visual impairment',
    'Blindness',
    'Down syndrome',
    'ADHD',
    'Epilepsy',
    'Traumatisc brain injury',
    'Intellectual disability',
    'Physical disability',
    'Dyslexia',
    'Developmental disability',
    'Speech or language impairment',
    'Hearing loss or deafness',
  ];
  bool isDark = false;
  bool loading = true;
  FunctionServices functionService = FunctionServices();

  getData() async {
    // ignore: use_build_context_synchronously
    await functionService.getParentInformation();
    await functionService.getHelpOrganization();
    await functionService.getOrganization();
    setState(() {
      loading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: Colors.grey),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      ' ${functionService.userModel.firstName} ${functionService.userModel.lastName}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Edit your profile'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EditProfile(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                // Handle item 2 tap
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () async {
                await functionService.signOut();
                sharedPreferences.setString("branch", "");

                Navigator.pop(context);
                setState(() {});
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        actions: [
          GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  barrierDismissible: true,
                  barrierColor: Colors.white,
                  builder: (BuildContext context) {
                    return StatefulBuilder(builder: (context, setStateBuilder) {
                      return AlertDialog(
                        shadowColor: Colors.white,
                        backgroundColor: Colors.white,
                        title: const Text(
                          "Parent",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple,
                          ),
                        ),
                        content: Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: MediaQuery.of(context).size.height * 0.7,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 9,
                                child: RawScrollbar(
                                  thumbColor: Colors.grey,
                                  thickness: 5,
                                  thumbVisibility: true,
                                  radius: const Radius.circular(5),
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 9.0),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Name:",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Container(
                                            height: 40,
                                            width: 250,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: const Color.fromARGB(
                                                    255, 66, 66, 66),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: TextField(
                                              controller: nameController,
                                              style: const TextStyle(
                                                  fontSize: 14.5,
                                                  height: 1.08,
                                                  color: Colors.black),
                                              cursorColor: Colors.grey,
                                              decoration: InputDecoration(
                                                contentPadding:
                                                    const EdgeInsets.symmetric(
                                                  horizontal: 15,
                                                  vertical: 15,
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Colors.transparent,
                                                    width: 0.4,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                ),
                                                border: OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Colors.transparent,
                                                    width: 0.4,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                      color: Colors.transparent,
                                                      width: 0.4),
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const Text(
                                            "Type of special need:",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Wrap(
                                            spacing: 5.0,
                                            children: List<Widget>.generate(
                                              typeNeeds.length,
                                              (int index) {
                                                return ChoiceChip(
                                                  label: Text(
                                                    typeNeeds[index],
                                                  ),
                                                  selected: _value == index,
                                                  onSelected: (bool selected) {
                                                    setStateBuilder(() {
                                                      selectedType =
                                                          typeNeeds[index];

                                                      _value = selected
                                                          ? index
                                                          : null;
                                                    });
                                                  },
                                                );
                                              },
                                            ).toList(),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const Text(
                                            "Gender:",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              setStateBuilder(
                                                () {
                                                  selectedGender = 1;
                                                },
                                              );
                                            },
                                            child: Container(
                                              color: Colors.transparent,
                                              child: Row(
                                                children: [
                                                  Container(
                                                    height: 20,
                                                    width: 20,
                                                    decoration: BoxDecoration(
                                                      color: selectedGender == 1
                                                          ? const Color
                                                              .fromARGB(
                                                              255, 66, 66, 66)
                                                          : Colors.transparent,
                                                      border: Border.all(
                                                        color: const Color
                                                            .fromARGB(
                                                            255, 66, 66, 66),
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  const Text(
                                                    "Male",
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              setStateBuilder(
                                                () {
                                                  selectedGender = 2;
                                                },
                                              );
                                            },
                                            child: Container(
                                              color: Colors.transparent,
                                              child: Row(
                                                children: [
                                                  Container(
                                                    height: 20,
                                                    width: 20,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: const Color
                                                            .fromARGB(
                                                            255, 66, 66, 66),
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                      color: selectedGender == 2
                                                          ? const Color
                                                              .fromARGB(
                                                              255, 66, 66, 66)
                                                          : Colors.transparent,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  const Text(
                                                    "Female",
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const Text(
                                            "Name of the concerned person:",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Container(
                                            height: 40,
                                            width: 250,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: const Color.fromARGB(
                                                    255, 66, 66, 66),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: TextField(
                                              controller:
                                                  nameConcernedController,
                                              style: const TextStyle(
                                                  fontSize: 14.5,
                                                  height: 1.08,
                                                  color: Colors.black),
                                              cursorColor: Colors.grey,
                                              decoration: InputDecoration(
                                                contentPadding:
                                                    const EdgeInsets.symmetric(
                                                  horizontal: 15,
                                                  vertical: 15,
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Colors.transparent,
                                                    width: 0.4,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                ),
                                                border: OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Colors.transparent,
                                                    width: 0.4,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                      color: Colors.transparent,
                                                      width: 0.4),
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const Text(
                                            "The needs:",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Container(
                                            height: 40,
                                            width: 250,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: const Color.fromARGB(
                                                    255, 66, 66, 66),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: TextField(
                                              controller: needsController,
                                              style: const TextStyle(
                                                  fontSize: 14.5,
                                                  height: 1.08,
                                                  color: Colors.black),
                                              cursorColor: Colors.grey,
                                              decoration: InputDecoration(
                                                contentPadding:
                                                    const EdgeInsets.symmetric(
                                                  horizontal: 15,
                                                  vertical: 15,
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Colors.transparent,
                                                    width: 0.4,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                ),
                                                border: OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Colors.transparent,
                                                    width: 0.4,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                      color: Colors.transparent,
                                                      width: 0.4),
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const Text(
                                            "E-mail:",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Container(
                                            height: 40,
                                            width: 250,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: const Color.fromARGB(
                                                    255, 66, 66, 66),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: TextField(
                                              controller: emailController,
                                              style: const TextStyle(
                                                  fontSize: 14.5,
                                                  height: 1.08,
                                                  color: Colors.black),
                                              cursorColor: Colors.grey,
                                              decoration: InputDecoration(
                                                contentPadding:
                                                    const EdgeInsets.symmetric(
                                                  horizontal: 15,
                                                  vertical: 15,
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Colors.transparent,
                                                    width: 0.4,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                ),
                                                border: OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Colors.transparent,
                                                    width: 0.4,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                      color: Colors.transparent,
                                                      width: 0.4),
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const Text(
                                            "Phone number:",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Container(
                                            height: 40,
                                            width: 250,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: const Color.fromARGB(
                                                    255, 66, 66, 66),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: TextField(
                                              controller: phoneNumberController,
                                              style: const TextStyle(
                                                  fontSize: 14.5,
                                                  height: 1.08,
                                                  color: Colors.black),
                                              cursorColor: Colors.grey,
                                              decoration: InputDecoration(
                                                contentPadding:
                                                    const EdgeInsets.symmetric(
                                                  horizontal: 15,
                                                  vertical: 15,
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Colors.transparent,
                                                    width: 0.4,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                ),
                                                border: OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Colors.transparent,
                                                    width: 0.4,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                      color: Colors.transparent,
                                                      width: 0.4),
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const Text(
                                            "Address:",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Container(
                                            height: 40,
                                            width: 250,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: const Color.fromARGB(
                                                    255, 66, 66, 66),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: TextField(
                                              controller: addressController,
                                              style: const TextStyle(
                                                  fontSize: 14.5,
                                                  height: 1.08,
                                                  color: Colors.black),
                                              cursorColor: Colors.grey,
                                              decoration: InputDecoration(
                                                contentPadding:
                                                    const EdgeInsets.symmetric(
                                                  horizontal: 15,
                                                  vertical: 15,
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Colors.transparent,
                                                    width: 0.4,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                ),
                                                border: OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Colors.transparent,
                                                    width: 0.4,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                      color: Colors.transparent,
                                                      width: 0.4),
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const Text(
                                            "Additional Information:",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Container(
                                            height: 40,
                                            width: 250,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: const Color.fromARGB(
                                                    255, 66, 66, 66),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: TextField(
                                              controller:
                                                  addressAdditionalController,
                                              style: const TextStyle(
                                                  fontSize: 14.5,
                                                  height: 1.08,
                                                  color: Colors.black),
                                              cursorColor: Colors.grey,
                                              decoration: InputDecoration(
                                                contentPadding:
                                                    const EdgeInsets.symmetric(
                                                  horizontal: 15,
                                                  vertical: 15,
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Colors.transparent,
                                                    width: 0.4,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                ),
                                                border: OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Colors.transparent,
                                                    width: 0.4,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                      color: Colors.transparent,
                                                      width: 0.4),
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: GestureDetector(
                                  onTap: () async {
                                    if (load == false) {
                                      setStateBuilder(() {
                                        load = true;
                                      });
                                      await functionService.addParent(
                                        context: context,
                                        nameConcerned:
                                            nameConcernedController.text,
                                        gender: selectedGender == 1
                                            ? "Male"
                                            : "Female",
                                        email: emailController.text,
                                        details: needsController.text,
                                        typeNeed: selectedType,
                                        address: addressController.text,
                                        phoneNumber: phoneNumberController.text,
                                        addressDetails:
                                            addressAdditionalController.text,
                                      );
                                      setStateBuilder(() {
                                        load = false;
                                      });
                                    }
                                  },
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                      left: 40,
                                      right: 40,
                                      top: 15,
                                    ),
                                    height: 50,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.black,
                                    ),
                                    child: load
                                        ? const Center(
                                            child: CircularProgressIndicator(
                                              color: Colors.white,
                                            ),
                                          )
                                        : const Text(
                                            "Submit",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white,
                                            ),
                                          ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    });
                  });
            },
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[300],
              ),
              child: Icon(
                Icons.add,
                color: Colors.grey[700],
              ),
            ),
          ),
        ],
      ),
      body: loading
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.purple,
              ),
            )
          : SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Welcome ${functionService.userModel.firstName} ${functionService.userModel.lastName}',
                      style: const TextStyle(
                        fontSize: 19,
                        color: Colors.purple,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 200,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Expanded(
                            child: Text(
                              "In Jidni you can fill the information about your children/related individuals with special needs, then you'll be able by searching to reach out for organizations to get the help needed.",
                              // maxLines: 5,
                              // overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          // const Center(
                          //   child: Padding(
                          //     padding: EdgeInsets.only(right: 8, left: 5),
                          //     child: Text(
                          //       "        In Jidni you can fill the information about your children/related individuals with special needs, then you'll be able by searching to reach out for organizations to get the help needed.",
                          //       style: TextStyle(
                          //           color: Colors.white,
                          //           fontSize: 14,
                          //           fontWeight: FontWeight.bold),
                          //     ),
                          //   ),
                          // ),

                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Typeofneeds(),
                                  ),
                                );
                              },
                              child: Container(
                                padding: EdgeInsets.all(7),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Text(
                                  "Tap to view types of special needs available",
                                  style: TextStyle(
                                    color: Colors.purple,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          // ElevatedButton(
                          //   onPressed: () {
                          //     Navigator.of(context).push(MaterialPageRoute(
                          //         builder: (context) => const Typeofneeds()));
                          //   },
                          //   child: const Text(
                          //       "Tap to view types of special needs available >>"),
                          // ),
                        ],
                      ),
                    ),
                    SizedBox(height: 25),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        width: double.infinity,
                        height: 40,
                        color: Colors.white,
                        child: const Text(
                          "✨ Most Helping Organizations",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 150,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount:
                              functionService.listHelpOrganization.length,
                          itemBuilder: (context, index) {
                            return Container(
                              width: 300,
                              margin: const EdgeInsets.all(5),
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  width: 3,
                                  color: Colors.purple,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 5,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          functionService
                                              .listHelpOrganization[index].name,
                                          textAlign: TextAlign.start,
                                          style: const TextStyle(
                                            fontSize: 20,
                                            color: Colors.purple,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          functionService
                                              .listHelpOrganization[index]
                                              .description,
                                          textAlign: TextAlign.start,
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.purple,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            functionService
                                                .listHelpOrganization[index]
                                                .number,
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                              fontSize: 20,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          const Text(
                                            "Individuals helped until now",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                    const SizedBox(height: 30),
                    GestureDetector(
                      onTap: () {
                        showDialog(
                            context: context,
                            barrierDismissible: true,
                            barrierColor: Colors.white,
                            builder: (BuildContext context) {
                              return StatefulBuilder(
                                  builder: (context, setStateBuilder) {
                                return AlertDialog(
                                  shadowColor: Colors.white,
                                  backgroundColor: Colors.white,
                                  title: const Text(
                                    "Parent",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.purple,
                                    ),
                                  ),
                                  content: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    height: MediaQuery.of(context).size.height *
                                        0.7,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Wrap(
                                          spacing: 5.0,
                                          children: List<Widget>.generate(
                                            typeNeeds.length,
                                            (int index) {
                                              return ChoiceChip(
                                                label: Text(
                                                  typeNeeds[index],
                                                ),
                                                selected: _value == index,
                                                onSelected: (bool selected) {
                                                  setStateBuilder(() {
                                                    selectedType =
                                                        typeNeeds[index];

                                                    _value =
                                                        selected ? index : null;
                                                  });
                                                },
                                              );
                                            },
                                          ).toList(),
                                        ),
                                        GestureDetector(
                                          onTap: () async {
                                            if (load == false) {
                                              setStateBuilder(() {
                                                load = true;
                                              });
                                              await functionService
                                                  .getOrganizationByFilter(
                                                typeNeed: selectedType,
                                              );
                                              setStateBuilder(() {
                                                load = false;
                                              });
                                              setState(() {});
                                              Navigator.pop(context);
                                            }
                                          },
                                          child: Container(
                                            margin: const EdgeInsets.only(
                                              left: 40,
                                              right: 40,
                                              top: 15,
                                            ),
                                            height: 50,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.black,
                                            ),
                                            child: load
                                                ? const Center(
                                                    child:
                                                        CircularProgressIndicator(
                                                      color: Colors.white,
                                                    ),
                                                  )
                                                : const Text(
                                                    "Submit",
                                                    style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () async {
                                            if (loader == false) {
                                              setStateBuilder(() {
                                                loader = true;
                                              });
                                              await functionService
                                                  .getOrganization();
                                              setStateBuilder(() {
                                                loader = false;
                                              });
                                              setState(() {});
                                              Navigator.pop(context);
                                            }
                                          },
                                          child: Container(
                                            margin: const EdgeInsets.only(
                                              left: 40,
                                              right: 40,
                                              top: 15,
                                            ),
                                            height: 50,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.black,
                                            ),
                                            child: loader
                                                ? const Center(
                                                    child:
                                                        CircularProgressIndicator(
                                                      color: Colors.white,
                                                    ),
                                                  )
                                                : const Text(
                                                    "Reset",
                                                    style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              });
                            });
                      },
                      child: Container(
                        height: 40,
                        padding: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[400],
                        ),
                        child: Row(
                          children: [
                            Text(
                              "All Categories",
                              style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 17,
                              ),
                            ),
                            const SizedBox(width: 5),
                            Icon(
                              Icons.arrow_circle_down,
                              color: Colors.grey[700],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Table(
                      columnWidths: const {
                        0: FractionColumnWidth(0.33),
                        1: FractionColumnWidth(0.33),
                        2: FractionColumnWidth(0.33),
                      },
                      border: const TableBorder(
                        bottom: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                      children: [
                        const TableRow(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.grey,
                                width: 1,
                              ),
                            ),
                          ),
                          children: [
                            TableCell(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Organization name',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                            TableCell(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Special need offered',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                            TableCell(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'E-mail Address',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        ...functionService.listOrganization.map((rowData) {
                          return TableRow(
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                              ),
                            ),
                            children: [
                              TableCell(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    rowData.organizationName,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      barrierDismissible: true,
                                      barrierColor: Colors.white,
                                      builder: (BuildContext context) {
                                        return StatefulBuilder(builder:
                                            (context, setStateBuilder) {
                                          return AlertDialog(
                                            shadowColor: Colors.white,
                                            backgroundColor: Colors.white,
                                            title: const Text(
                                              "Informations",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.purple,
                                              ),
                                            ),
                                            content: Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.8,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.2,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                          "Organization name:"),
                                                      Text(
                                                        rowData
                                                            .organizationName,
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    height: 5,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                          "Organization email: "),
                                                      Text(
                                                        rowData.email,
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    height: 5,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                          "Organization address: "),
                                                      Text(
                                                        rowData.address,
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    height: 5,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                          "Organization phone number: "),
                                                      Text(
                                                        rowData.phoneNumber,
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    height: 5,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text("Type of need: "),
                                                      Text(
                                                        rowData.typeNeed,
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    height: 5,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        });
                                      });
                                },
                                child: TableCell(
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      rowData.typeNeed,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    rowData.email,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        }).toList(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
