import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../global/global.dart';


class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {
    void validation(){
      final FormState? _form =  _formKey.currentState;
      if (_form!.validate()) {
        print(" ghost-elite ");
      } else{
        print(" no ghost-elite");
      }
    }
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: _formKey,
            child: Container(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 220,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("Register",style:
                        TextStyle(fontSize: 50,fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 400,
                    margin: EdgeInsets.symmetric(horizontal: 10),

                    child: Column(
                      children: [
                        TextFormField(
                          validator: (value){
                            if (value!.length < 6) {
                              return "User Is Too Short";
                            }else if(value == ''){
                              return " Please Fill UserName ";
                            }
                            return "";
                          },
                          decoration: InputDecoration(
                              hintText: 'UserName',
                              /*suffixIcon: GestureDetector(
                                  onTap: (){
                                    FocusScope.of(context).unfocus();
                                  },
                                  child: Icon(Icons.visibility,
                                    color: Colors.black,
                                  ),
                                ),*/
                              hintStyle: TextStyle(
                                  color: Colors.black54
                              ),
                              border: OutlineInputBorder()
                          ),
                        ),
                        SizedBox(height: 10,),
                        TextFormField(
                          validator: (value){
                            if (value == '') {
                              return " Please Fill Email ";
                            }else if(!regExp!.hasMatch(value!)){
                              return "Email is invalid";

                            }

                          },
                          decoration: const InputDecoration(
                              hintText: 'Email',
                              /*suffixIcon: GestureDetector(
                                  onTap: (){
                                    FocusScope.of(context).unfocus();
                                  },
                                  child: Icon(Icons.visibility,
                                    color: Colors.black,
                                  ),
                                ),*/
                              hintStyle: TextStyle(
                                  color: Colors.black54
                              ),
                              border: OutlineInputBorder()
                          ),
                        ),
                        SizedBox(height: 10,),
                        TextFormField(
                          validator: (value){
                            if (value == '') {
                              return " Please Fill Password ";
                            }else if(value!.length > 8 ){
                              return "Password is too Short";

                            }
                            return "";
                          },
                          decoration: InputDecoration(
                              hintText: 'Password',
                              suffixIcon: GestureDetector(
                                onTap: (){
                                  FocusScope.of(context).unfocus();
                                },
                                child: Icon(Icons.visibility,
                                  color: Colors.black,
                                ),
                              ),
                              hintStyle: TextStyle(
                                  color: Colors.black54
                              ),
                              border: OutlineInputBorder()
                          ),
                        ),
                        SizedBox(height: 10,),
                        TextFormField(
                          validator: (value){
                            if (value == '') {
                              return " Please Fill Phone Number ";
                            }else if(value!.length > 9 ){
                              return "Phone number must be 9";

                            }
                            return "";
                          },
                          decoration: const InputDecoration(
                              hintText: 'Phone',
                              /*suffixIcon: GestureDetector(
                                  onTap: (){
                                    FocusScope.of(context).unfocus();
                                  },
                                  child: Icon(Icons.visibility,
                                    color: Colors.black,
                                  ),
                                ),*/
                              hintStyle: TextStyle(
                                  color: Colors.black54
                              ),

                              border: OutlineInputBorder()
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 45,
                          child: RaisedButton(
                            onPressed: (){
                              validation();
                            },
                            color: Colors.blueGrey[400],
                            child: Text('Register'),
                          ),
                        ),
                        SizedBox(height: 9,),
                        Row(
                          children: [
                            Text('I Have Already An Account!'),
                            SizedBox(width: 10,),
                            GestureDetector(
                              child: Text('Login',style: TextStyle(
                                  color: Colors.cyan,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                              ),),
                            )
                          ],
                        )
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
