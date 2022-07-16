import 'package:fee_management_app/pages/student/student_home.dart';
import 'package:flutter/material.dart';

import '../../utils/constant.dart';

class StudentLogin extends StatefulWidget {
  const StudentLogin({Key? key}) : super(key: key);

  @override
  State<StudentLogin> createState() => _StudentLoginState();
}

class _StudentLoginState extends State<StudentLogin> {

  bool _isObscure = true;

  final _formKey = GlobalKey<FormState>();

  TextEditingController _nameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.white,),
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 3.2,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                gaph10,
                Image.asset('images/student.png', width: 150, height: 150),
                gaph20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Hi', style: Theme.of(context).textTheme.headline6!.copyWith(fontWeight: FontWeight.w200,)),
                    Text(' STUDENT', style: Theme.of(context).textTheme.headline6),

                  ],
                ),
                Text('Log in to continue', style: Theme.of(context).textTheme.bodyText2),
                gaph10,

              ],
            ),
          ),


          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),

            child: Padding(
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
                          labelText: ' Academy Name',
                        ),

                        controller: _nameController,
                        keyboardType: TextInputType.name,
                        validator: (value){
                          if(value!.isEmpty){
                            return 'Enter Academy Name';
                          }
                          else {
                            return null;
                          }
                        },
                      ),
                      gaph20,
                      TextFormField(
                        obscureText: _isObscure,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isObscure ? Icons.visibility : Icons.visibility_off,
                            ),
                            onPressed: () {
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                            },
                          ),
                        ),
                      ),

                      gaph20,
                      gaph20,

                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const StudentHome()));
                          },
                          child: Text('Login')
                      ),
                      gaph20,
                    ]
                ),
              ),
            ),
          ),

        ],
      ),


    );
  }
}
