import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/edit_organization.dart';
import 'package:sample/main.dart';
import 'package:sample/services/functions_services.dart';
import 'addOrganization.dart';

class Organization extends StatefulWidget {
  const Organization({super.key});

  @override
  State<Organization> createState() => _OrganizationState();
}

class _OrganizationState extends State<Organization> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  int selectedGender = 0;

  bool load = false;
  bool loader = false;
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

  String selectedType = '';
  int? _value = -1;
  FunctionServices functionService = FunctionServices();
  bool loading = true;
  getData() async {
    // ignore: use_build_context_synchronously

    await functionService.getOrganizationInformation();
    await functionService.getParent();

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
                      functionService.organizationModel.organizationName,
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
              title: const Text('Edit your organization'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const EditOrganization()));
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
              onTap: () {
                functionService.signOut();
                sharedPreferences.setString("branch", "");
                setState(() {});
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        actions: [
          GestureDetector(
            onTap: () {
              showDialog<void>(
                  context: context,
                  barrierDismissible: true,
                  barrierColor: Colors.white,
                  builder: (BuildContext context) {
                    return StatefulBuilder(builder: (context, setStateBuilder) {
                      return AlertDialog(
                        shadowColor: Colors.white,
                        backgroundColor: Colors.white,
                        title: const Text(
                          "Organization",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple,
                          ),
                        ),
                        content: Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: MediaQuery.of(context).size.height * 0.55,
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
                                            "Name of Organization:",
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
                                      await functionService.addOrganization(
                                        context: context,
                                        organizationName: nameController.text,
                                        typeNeed: selectedType,
                                        email: emailController.text,
                                        address: addressController.text,
                                        phoneNumber: phoneNumberController.text,
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
              child: Column(
                children: [
                  Text(
                    'Welcome ${functionService.organizationModel.organizationName}',
                    style: const TextStyle(
                      fontSize: 19,
                      color: Colors.purple,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
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
                                  height:
                                      MediaQuery.of(context).size.height * 0.7,
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
                                                .getParentByFilter(
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
                                              fontWeight: FontWeight.w700,
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
                                                .getParent(
                                            );
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
                                                    fontWeight: FontWeight.w700,
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
                                'Individual name',
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
                                'Special need',
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
                      ...functionService.listParent.map((rowData) {
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
                                  rowData.nameConcerned,
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
                                                0.3,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                            ),
                                            child: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                        "Parent name:"),
                                                    Text(
                                                      rowData
                                                          .nameConcerned,
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
                                                        "Parent email: "),
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
                                                        "Parent address: "),
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
                                                        "Parent phone number: "),
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
                                                Row(
                                                  children: [
                                                    Text("Gender: "),
                                                    Text(
                                                      rowData.gender,
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
                                                    Text("details: "),
                                                    Text(
                                                      rowData.details,
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
                                                    Text("Address details: "),
                                                    Text(
                                                      rowData.addressDetails,
                                                      style: TextStyle(
                                                          fontWeight:
                                                          FontWeight
                                                              .bold),
                                                    ),
                                                  ],
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
    );
  }
}
