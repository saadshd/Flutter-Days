import 'package:driving_school/utils/constant.dart';
import 'package:flutter/material.dart';

class bookingpage extends StatefulWidget {
  const bookingpage({Key? key}) : super(key: key);

  @override
  State<bookingpage> createState() => _bookingpageState();
}

class _bookingpageState extends State<bookingpage> {
  final formkey = GlobalKey<FormState>();
  TextEditingController fieldText = TextEditingController();
  void cleartext() => fieldText.clear();

  // final items = ['M. Saad Shahid','Talha Bin Tahir','Abdul Haseeb',];
  // late String _selectedValue;
  // List<String> listOfValue = ['1', '2', '3', '4', '5'];



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
                    controller: fieldText,
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
                    controller: fieldText,
                    keyboardType: TextInputType.number,
                    validator: (value){
                      if(value!.isEmpty){
                        return 'Enter your CNIC';
                      }
                      else if(!RegExp(r'^[0-9]{5}[-][0-9]{7}[-][0-9]+$').hasMatch(value)){
                        return 'Enter valid CNIC';
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
                    controller: fieldText,
                    keyboardType: TextInputType.number,
                    validator: (value){
                      if(value!.isEmpty){
                        return 'Enter your date of birth';
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
                    controller: fieldText,
                    keyboardType: TextInputType.number,
                    validator: (value){
                      if(value!.isEmpty){
                        return 'Enter your phone number';
                      }
                      else if(!RegExp(r'^[0-9]{4}[-\s\./0-9]+$').hasMatch(value)){
                        return 'Enter valid phone number';
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
                    controller: fieldText,
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

                  TextFormField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(
                      ),
                      labelText: 'Instructor',

                    ),
                    controller: fieldText,
                    keyboardType: TextInputType.name,
                    validator: (value){
                      if(value!.isEmpty){
                        return 'Enter an instructor';
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
                      labelText: 'Package',
                    ),
                    controller: fieldText,
                    keyboardType: TextInputType.number,
                    validator: (value){
                      if(value!.isEmpty){
                        return 'Enter a package';
                      }
                      else if(!RegExp(r'^[1-4]+$').hasMatch(value)){
                        return 'Enter a valid package';
                      }
                      else {
                        return null;
                      }
                    },
                  ),
                  gaph20,

                  // DropdownButtonFormField(
                  //   value: _selectedValue,
                  //   hint: Text(
                  //     'choose one',
                  //   ),
                  //   isExpanded: true,
                  //   onChanged: (value) {
                  //     setState(() {
                  //       //_selectedValue = value;
                  //     });
                  //   },
                  //   onSaved: (value) {
                  //     setState(() {
                  //       //_selectedValue = value;
                  //     });
                  //   },
                  //   // validator: (String value) {
                  //   //   if (value.isEmpty) {
                  //   //     return "can't empty";
                  //   //   } else {
                  //   //     return null;
                  //   //   }
                  //   // },
                  //   items: listOfValue
                  //       .map((String val) {
                  //     return DropdownMenuItem(
                  //       value: val,
                  //       child: Text(
                  //         val,
                  //       ),
                  //     );
                  //   }).toList(),
                  // ),



                  ElevatedButton(
                      onPressed: () {
                        if(formkey.currentState!.validate()){
                          final snackBar = SnackBar(content: Text('Class booked successfully.'));
                          _scaffoldKey.currentState!.showSnackBar(snackBar);
                              }
                        cleartext();
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

