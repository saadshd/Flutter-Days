import 'package:driving_school/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class bookingpage extends StatefulWidget {
  const bookingpage({Key? key}) : super(key: key);

  @override
  State<bookingpage> createState() => _bookingpageState();
}

class _bookingpageState extends State<bookingpage> {
  final formkey = GlobalKey<FormState>();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController cniccontroller = TextEditingController();
  TextEditingController dobcontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController addresscontroller = TextEditingController();
  // TextEditingController instructorcontroller = TextEditingController();
  // TextEditingController packagecontroller = TextEditingController();


  final List<String> instructoritems = [
    'M. Saad Shahid',
    'Talha Bin Tahir',
  ];

  String? instructorvalue;


  final List<String> packagetems = [
    '1',
    '2',
    '3',
    '4',
  ];

  String? packagevalue;



  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("Book Your Class"),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: SingleChildScrollView(
          child: Padding(
            padding: kpd25,
            child: Form(
              key: formkey,
              child: Column(
                children: [
                  gaph20,
                  TextFormField(
                    decoration: InputDecoration(
                        border: UnderlineInputBorder(
                        ),
                        labelText: 'Name',
                    ),
                    controller: namecontroller,
                    keyboardType: TextInputType.name,
                    validator: (value){
                      if(value!.isEmpty){
                        return 'Enter your name';
                      }
                      else if(!RegExp(r'^[a-z A-Z]+$').hasMatch(value)){
                        return 'Enter valid name';
                      }
                      else {
                        return null;
                      }
                    },
                  ),

                  gaph10,

                  TextFormField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(
                      ),
                      labelText: 'CNIC',
                      helperText: 'XXXXX-XXXXXXX-X',
                    ),
                    controller: cniccontroller,
                    keyboardType: TextInputType.number,
                    validator: (value){
                      if(value!.isEmpty){
                        return 'Enter your CNIC';
                      }
                      else if(!RegExp(r'^[0-9]{5}[-][0-9]{7}[-][0-9]+$').hasMatch(value)){
                        return 'Enter valid CNIC: XXXXX-XXXXXXX-X';
                      }
                      else {
                        return null;
                      }
                    },
                  ),
                  gaph10,

                  TextFormField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(
                      ),
                      labelText: 'Date of Birth',
                      helperText: 'dd-MM-yyyy',
                    ),
                    controller: dobcontroller,
                    keyboardType: TextInputType.number,
                    validator: (value){
                      if(value!.isEmpty){
                        return 'Enter your date of birth: dd-MM-yyyy';
                      }
                      else {
                        return null;
                      }
                    },

                  ),
                  gaph10,

                  TextFormField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(
                      ),
                      labelText: 'Phone No.',
                        helperText: 'XXXX-XXXXXXX'
                    ),
                    controller: phonecontroller,
                    keyboardType: TextInputType.number,
                    validator: (value){
                      if(value!.isEmpty){
                        return 'Enter your phone number: XXXX-XXXXXXX';
                      }
                      else if(!RegExp(r'^[0-9]{4}[-\s\./0-9]+$').hasMatch(value)){
                        return 'Enter valid phone number: XXXX-XXXXXXX';
                      }
                      else {
                        return null;
                      }
                    },
                  ),
                  gaph10,

                  TextFormField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(
                      ),
                      labelText: 'Address',
                    ),
                    controller: addresscontroller,
                    keyboardType: TextInputType.streetAddress,
                    validator: (value){
                      if(value!.isEmpty){
                        return 'Enter your address';
                      }
                      else {
                        return null;
                      }
                    },

                  ),
                  gaph10,

                  // TextFormField(
                  //   decoration: InputDecoration(
                  //     border: UnderlineInputBorder(
                  //     ),
                  //     labelText: 'Instructor',
                  //
                  //   ),
                  //   controller: instructorcontroller,
                  //   keyboardType: TextInputType.name,
                  //   validator: (value){
                  //     if(value!.isEmpty){
                  //       return 'Enter an instructor';
                  //     }
                  //     else {
                  //       return null;
                  //     }
                  //   },
                  // ),
                  // gaph10,
                  //
                  // TextFormField(
                  //   decoration: InputDecoration(
                  //     border: UnderlineInputBorder(
                  //     ),
                  //     labelText: 'Package',
                  //     hintText: '1-4'
                  //   ),
                  //   controller: packagecontroller,
                  //   keyboardType: TextInputType.number,
                  //   validator: (value){
                  //     if(value!.isEmpty){
                  //       return 'Enter a package: 1-4';
                  //     }
                  //     else if(!RegExp(r'^[1-4]+$').hasMatch(value)){
                  //       return 'Enter a valid package: 1-4';
                  //     }
                  //     else {
                  //       return null;
                  //     }
                  //   },
                  // ),
                  // gaph10,

                  DropdownButtonFormField2(
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.zero,
                      border: UnderlineInputBorder(
                      ),
                    ),
                    isExpanded: true,
                    hint: const Text(
                      'Select Your Instructor',
                    ),
                    icon: const Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black45,
                    ),
                    iconSize: 30,
                    buttonHeight: 60,
                    buttonPadding: const EdgeInsets.only(left: 20, right: 10),
                    dropdownDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    items: instructoritems
                        .map((item) =>
                        DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                          ),
                        ))
                        .toList(),
                    validator: (value) {
                      if (value == null) {
                        return 'Please select instructor.';
                      }
                    },
                    onChanged: (value) {

                    },
                    onSaved: (value) {
                      instructorvalue = value.toString();
                    },
                  ),
                  gaph10,

                  DropdownButtonFormField2(
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.zero,
                      border: UnderlineInputBorder(
                      ),
                    ),
                    isExpanded: true,
                    hint: const Text(
                      'Select Your Package',
                    ),
                    icon: const Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black45,
                    ),
                    iconSize: 30,
                    buttonHeight: 60,
                    buttonPadding: const EdgeInsets.only(left: 20, right: 10),
                    dropdownDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    items: packagetems
                        .map((item) =>
                        DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                          ),
                        ))
                        .toList(),
                    validator: (value) {
                      if (value == null) {
                        return 'Please select package.';
                      }
                    },
                    onChanged: (value) {

                    },
                    onSaved: (value) {
                      packagevalue = value.toString();
                    },
                  ),
                  gaph20,


                  ElevatedButton(
                      onPressed: () {
                        if(formkey.currentState!.validate()){
                          final snackBar = SnackBar(
                            content: Text('Class booked successfully.'),
                            behavior: SnackBarBehavior.floating,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                            ),
                            backgroundColor: Colors.indigo,
                          );
                          _scaffoldKey.currentState!.showSnackBar(snackBar);
                          namecontroller.clear();
                          cniccontroller.clear();
                          dobcontroller.clear();
                          phonecontroller.clear();
                          addresscontroller.clear();
                          // instructorcontroller.clear();
                          // packagecontroller.clear();
                              }
                    },
                      child: Text('Book Class')
                  ),
                  gaph20,


                ],
              ),
            ),
          ),

      ),
    );
  }
}

