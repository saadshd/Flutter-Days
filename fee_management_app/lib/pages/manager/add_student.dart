import 'package:flutter/material.dart';
// import 'package:image_picker_form_field/image_picker_form_field.dart';
import '../../utils/constant.dart';

class AddStudent extends StatefulWidget {
  const AddStudent({Key? key}) : super(key: key);

  @override
  State<AddStudent> createState() => _AddStudentState();
}

class _AddStudentState extends State<AddStudent> {

  String dropdownvalue = 'Select a Class';
  var items = [
    'Select a Class',
    'ICS (1st Year)',
    'ICS (2nd Year)',
  ];

  final _formKey = GlobalKey<FormState>();

  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('Add Student', style: TextStyle(color: Colors.white),),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },

            icon: Icon(Icons.arrow_back_ios_new, color: Colors.white,),
          ),
          actions: [
          IconButton(
          onPressed: () {
        Navigator.pop(context);
    },
      icon: Icon(Icons.check, color: Colors.white,),
    ),
      ]
    ),
      body: Padding(
        padding: kpdh20,
        child: Form(
          key: _formKey,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                gaph20,
                TextFormField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Name',
                  ),

                  controller: _nameController,
                  keyboardType: TextInputType.name,
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Enter Name';
                    }
                    else {
                      return null;
                    }
                  },
                ),

                gaph20,
                DropdownButton(
                  isExpanded: true,
                  value: dropdownvalue,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),

                // gaph10,
                // ImagePickerFormField(
                //   child: Container(
                //     height: 40,
                //     child: Center(child: Text("Select Photo")),
                //     width: double.infinity,
                //     decoration: BoxDecoration(
                //         borderRadius: BorderRadius.all(Radius.circular(8)),
                //         border: Border.all(
                //             color: Theme.of(context).disabledColor, width: 1)),
                //   ),
                //   previewEnabled: true,
                //   autovalidate: true,
                //   context: context,
                //   onSaved: (value) {
                //
                //   },
                //   validator: (value) {
                //     if (value == null)
                //       return "Please select a photo!";
                //     else return null;  },
                //   initialValue: null,
                // ),

                gaph10,
                TextFormField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Phone No.',
                  ),
                  controller: _phoneController,
                  keyboardType: TextInputType.name,
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Enter Phone No.';
                    }
                    else {
                      return null;
                    }
                  },
                ),

                gaph10,
                TextFormField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Email',
                  ),
                  controller: _emailController,
                  keyboardType: TextInputType.name,
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Enter Email';
                    }
                    else {
                      return null;
                    }
                  },
                ),

                gaph10,
                TextFormField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Password',
                  ),
                  keyboardType: TextInputType.name,
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Enter a password';
                    }
                    else {
                      return null;
                    }
                  },
                ),

              ]
          ),
        ),
      ),
    );
  }
}
