import 'package:fee_management_app/pages/manager/manager_login.dart';
import 'package:flutter/material.dart';
import '../../utils/constant.dart';

class ManagerSignup extends StatefulWidget {
  const ManagerSignup({Key? key}) : super(key: key);

  @override
  State<ManagerSignup> createState() => _ManagerSignupState();
}

class _ManagerSignupState extends State<ManagerSignup> {

  bool _isObscure = true;

  final _formKey = GlobalKey<FormState>();

  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
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
                Image.asset('images/manager.png', width: 150, height: 150),
                gaph20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Hi', style: Theme.of(context).textTheme.headline6!.copyWith(fontWeight: FontWeight.w200,)),
                    Text(' MANAGER', style: Theme.of(context).textTheme.headline6),
                  ],
                ),
                Text('Register to continue', style: Theme.of(context).textTheme.bodyText2),
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
                        controller: _passwordController,
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

                      gaph10,
                      TextFormField(
                        controller: _passwordController,
                        obscureText: _isObscure,
                        decoration: InputDecoration(
                          labelText: 'Confirm Password',
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

                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const ManagerLogin()));
                          },
                          child: Text('Register')
                      ),
                      gaph10,

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already registered!', style: ksm,),
                          TextButton(
                              style: ButtonStyle(
                                overlayColor: MaterialStateProperty.all(Colors.transparent),
                              ),
                              onPressed: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const ManagerLogin()));
                              },
                              child: Text('Login Here')),
                        ],
                      )
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
