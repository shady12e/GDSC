import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:gdsc/gdsc/componed.dart';

import 'animated_list.dart';
import 'login_screen.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isPassword = true;
  bool isconferm = true;
  @override
  var EmailController = TextEditingController();
  var passwordController = TextEditingController();
  var ConfurmpasswordController = TextEditingController();
  var phoneController = TextEditingController();
  var formKey =GlobalKey<FormState>();
  // var login = formKey.currentState!.validate();
  @override

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
          title: const Text('GDSC APP'),
        ),
        body:SingleChildScrollView(
          child: Column(
            children: [
              ClipPath(
              clipper: WaveClipperOne(),
                 child: Container(
                   height: 170,
                   color: Colors.deepPurple,
                    child: const Center(child: Text("REGISTER",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    ),
                  ),
      ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          controller:EmailController,
                          validator: (value){
                            if(value!.isEmpty){
                              return 'you must put your email';
                            }
                            else if(EmailController.text.contains('@')==false||
                                EmailController.text.contains('.') == false
                            )
                            {
                              return 'you must put @ or .';
                            }
                            return null ;
                          },
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.deepPurple),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              label: const Text('Email Address',
                                style: TextStyle(color: Colors.deepPurple),
                              ),

                              prefixIcon: const Icon(Icons.email,
                                color: Colors.deepPurple,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              )
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          controller:passwordController,
                          validator: (String? value){
                            if(value!.isEmpty){
                              return 'you must put your password';
                            }
                            else if (value.length <8)
                            {
                              return'you must be more then 8 characters';
                            }
                            return null;
                          },
                          obscureText: isPassword,

                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.deepPurple),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              label: const Text('Password',
                              style: TextStyle(color: Colors.deepPurple),
                              ),
                              suffixIcon:IconButton(
                                onPressed: (){
                                  setState(() {
                                    isPassword = !isPassword;
                                  });
                                },
                                icon: Icon(isPassword ? Icons.visibility_off:Icons.remove_red_eye ,
                                color: Colors.deepPurple,
                                ),
                              ),
                              prefixIcon: const Icon(Icons.lock,
                              color: Colors.deepPurple,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              )
                          ),
                        ),

                        const SizedBox(height: 10),
                        TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          controller:ConfurmpasswordController,
                          obscureText: isconferm,
                          validator: (String? value){
                            if(value!.isEmpty){
                              return 'you must put your password';
                            }else if (value.length < 8){
                              return 'you must be more then 8 characters';
                            }
                            return null ;
                          },
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.deepPurple),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              label: const Text('Confirm Password',
                              style: TextStyle(color: Colors.deepPurple,
                                ),
                              ),
                              suffixIcon: IconButton(
                                onPressed: (){
                                  setState(() {
                                    isconferm = !isconferm;
                                  });
                                },
                                icon: Icon(isconferm ? Icons.visibility_off:Icons.remove_red_eye ,
                                  color: Colors.deepPurple,
                                ),
                              ),
                              prefixIcon: const Icon(Icons.lock,
                              color: Colors.deepPurple,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              )
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          controller:phoneController,
                          validator: (String? value){
                            if(value!.isEmpty){
                              return 'you must put your phone number';
                            }
                            return null ;
                          },
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.deepPurple),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              label: const Text('Phone number',
                              style: TextStyle(color: Colors.deepPurple),
                              ),
                              prefixIcon: const Icon(Icons.phone,
                              color: Colors.deepPurple,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              )
                          ),
                        ),
                         const SizedBox(height: 10,),
                      Container(
                      width: double.infinity,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.circular(10),
                        color:Colors.deepPurple,
                      ),
                      child: MaterialButton(
                        onPressed:(){
                        if(formKey.currentState!.validate())
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (context)
                          {
                            return AnimatedScreen();
                          }
                          ));
                        }

                      },

                        child:const Text('REGISTER',
                           style: TextStyle(fontSize:15.0,
                              fontWeight:FontWeight.normal,
                              color:Colors.white,
                          ),

                        ),

                      ),
                    ),
                         const SizedBox(height: 10),
                     Container(
                      width: double.infinity,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.circular(10),
                        color:Colors.white,
                      ),
                      child: MaterialButton( onPressed:(){
                         if(formKey.currentState!.validate())
                         {
                           Navigator.push(context, MaterialPageRoute(builder: (context)
                           {
                            return LoginScreen();
                          }
                          ));
                         }
                        },




                        child:const Text('LOGIN',
                           style: TextStyle(fontSize:15.0,
                              fontWeight:FontWeight.normal,
                              color:Colors.deepPurple
                          ),

                        ),

                      ),
                    ),

                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

