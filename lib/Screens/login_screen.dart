import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:orc_application/Screens/homepage.dart';
import 'package:orc_application/Styles/colors.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:orc_application/Widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
final _formKey = GlobalKey<FormState>();
 bool showPassword = false;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ProjectColors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.arrow_back_ios),
                
                )
          ],
        ),
      ),
      body:  SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(right: 20,
          left: 20,
          top: 30,
          bottom: 20
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(padding: EdgeInsets.only(top: 20.0,
              bottom: 15.0,
              ),
              child: Text("Sign In"),
              ),
              Padding(padding: const EdgeInsets.symmetric(vertical: 20),
              child: Form(
                key: _formKey,
                child: 
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Padding(padding: EdgeInsets.symmetric(
                        vertical: 10.0,
                        
                      ),
                      child: Text("Username"),

                      ),
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        height: 50.0,
                        child: TextFormField(
                          decoration: const InputDecoration(
                           hintText: "Your Username",
                            focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 2,)
                            ),
                          ),
                        ),
                      )
                    ],
                  ) ,

                  ),
                   Padding(padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Padding(padding: EdgeInsets.symmetric(
                        vertical: 10.0,
                        
                      ),
                      child: Text("Password"),

                      ),
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        height: 50.0,
                        child: TextFormField(
                          decoration: InputDecoration(
                            focusedBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 2,),
                                        
                            ),
                                 suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          showPassword = !showPassword;
                                        });
                                      },
                                      icon: Iconify(
                                          !showPassword
                                              ? Mdi.eye_outline
                                              : Mdi.eye_off_outline,
                                          color: ProjectColors.black)),       

                          ),
                        ),
                      )
                    ],
                  ) ,
                  ),
                  Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: CustomButton(onpress: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => const HomePage()));
                  },
                  buttonColor: ProjectColors.pink,
                  buttonText: "Sign In",
                  ),
                ),
                ],
              )
              ),
              ),
              const Row(
                children:[
                  Text("Forgot password?"),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text("Reset Here")
                  )
                ]
              ),
              const Padding(padding: EdgeInsets.symmetric(
                vertical: 15.0,
                
              ),
              child: Text("Don't have an account ?"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
