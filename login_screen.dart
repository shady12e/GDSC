import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:gdsc/gdsc/animated_list.dart';
import 'package:gdsc/gdsc/register_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  var EmailController = TextEditingController();

  var PasswordController =TextEditingController();

  var ispassword = true;
  var formKay =GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GDSC'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
              clipper: WaveClipperOne(),
              child: Container(
                height: 170,
                color: Colors.deepPurple,
                child: const Center(child: Text("LOGIN",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Form(
              key: formKay,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
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
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      controller:PasswordController,
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
                      obscureText: ispassword,

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
                                ispassword = !ispassword;
                              });
                            },
                            icon: Icon(ispassword ? Icons.visibility_off:Icons.remove_red_eye ,
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
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.circular(10),
                        color:Colors.deepPurple,
                      ),
                      child: MaterialButton( onPressed:(){
                        if(formKay.currentState!.validate())
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (context)
                          {
                            return AnimatedScreen();
                          }
                          ));
                        }
                      },
                        child:const Text('LOGIN',
                          style: TextStyle(fontSize:15.0,
                              fontWeight:FontWeight.normal,
                              color:Colors.white
                          ),

                        ),

                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.circular(10),
                        color:Colors.white,
                      ),
                      child: MaterialButton(
                        onPressed:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context)
                          {
                            return RegisterScreen();
                          }
                          ));

                        },

                        child:const Text('REGISTER',
                          style: TextStyle(fontSize:15.0,
                            fontWeight:FontWeight.normal,
                            color:Colors.deepPurple,
                          ),

                        ),

                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );

  }
}
