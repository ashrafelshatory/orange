import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orange/cubit/login_cubit.dart';
import 'package:orange/cubit/signup_cubit.dart';
import 'package:orange/signup.dart';
import 'package:orange/view_model/Database/network/dio_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orange/cubit/login_cubit.dart';
import 'package:orange/signup.dart';
import 'package:orange/view_model/Database/network/dio_helper.dart';

import 'login.dart';
class Sign_up extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => SignupCubit(),
      child: BlocConsumer<SignupCubit,SignupStates>(
        listener: (context, state) {
          DioHelper.init();
          // TODO: implement listener
        },
        builder: (context, state) {
          return MaterialApp(
            home: Scaffold(
              body: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            SizedBox(height: 30,),
                            Text('Orange',style: TextStyle(color:Colors.orange,fontSize: 30,fontWeight: FontWeight.bold),),
                            Text(' Digital Center',style: TextStyle(color:Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),

                          ],

                        ),
                        SizedBox(height: 100,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Sign Up',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                            SizedBox(height: 20,),
                            TextFormField(
                              controller: SignupCubit.get(context).namesignupcontroler,

                              onTap:(){

                              },
                              onChanged: (value){},

                              decoration: InputDecoration(

                                  label: Text('Name'),
                                  hintText: "Name",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20)
                                  )
                              ),
                            ),
                            SizedBox(height: 20,),
                            TextFormField(
                              controller: SignupCubit.get(context).emailsignuocontroler,

                              onTap:(){

                              },
                              onChanged: (value){},

                              decoration: InputDecoration(

                                  label: Text('E-Mail'),
                                  hintText: "E-Mail",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20)
                                  )
                              ),
                            ),
                            SizedBox(height: 20,),
                            mytextformfeild(lable: 'pass',icon:Icon(Icons.remove_red_eye),
                             textEditingController: SignupCubit.get(context).passsignupcontroler

                            ),
                            SizedBox(height: 20,),
                            mytextformfeild(lable: 'pass',icon:Icon(Icons.remove_red_eye),
                                textEditingController: SignupCubit.get(context).passsignup2controler
                            ),///
                            SizedBox(height: 20,),
                            TextFormField(
                              controller: SignupCubit.get(context).phonecontroler,

                              onTap:(){

                              },
                              onChanged: (value){},

                              decoration: InputDecoration(

                                  label: Text('phone number'),

                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20)
                                  )
                              ),
                            ),
                            SizedBox(height: 30,),

                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                            DropdownButton<String>(
                            hint: Text('Male'),

                            borderRadius: BorderRadius.circular(20),
                            items: <String>['Male','Fimale'].map((String value) {
                            return DropdownMenuItem<String>(

                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (_) {},
                        ),
                        SizedBox(width: 70),
                        DropdownButton<String>(
                          hint: Text('AUC'),
                          borderRadius: BorderRadius.circular(20),
                          items: <String>['AUC', 'Cairo', 'Helwan', 'ELO','GUC','HTI'].map((String value) {
                            return DropdownMenuItem<String>(

                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (_) {},
                        ),
                      ],
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        DropdownButton<String>(
                          hint: Text('Grade'),
                          borderRadius: BorderRadius.circular(20),
                          items: <String>['Grade1', 'Grade2', 'Grade3', 'Grade4'].map((String value) {
                            return DropdownMenuItem<String>(

                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (_) {},
                        ),
                      ],
                    ),


                    Container(
                      margin: EdgeInsets.all(10),
                      height: 50.0,
                      width: 500,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.deepOrange)),
                        onPressed: () {
                          SignupCubit.get(context).userSignup(context);

                        },
                        padding: EdgeInsets.all(10.0),
                        color: Colors.deepOrange,
                        textColor: Colors.white,
                        child: Text("Sigh Up",
                            style: TextStyle(fontSize: 20)),
                      ),
                    ),

                    Row(
                        children: <Widget>[
                          Expanded(
                              child: Divider()
                          ),

                          Text("OR"),

                          Expanded(
                              child: Divider()
                          ),
                        ]
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 50.0,
                      width: 500,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(

                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.deepOrange)),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                        },
                        padding: EdgeInsets.all(10.0),
                        color: Colors.white,
                        textColor: Colors.orange,
                        child: Text("Login",
                            style: TextStyle(fontSize: 20)),
                      ),
                    ),


                    ],
                  ),
                  ],
                ),
              ),
            ),
          ),
          ),
          );
        },
      ),
    );
  }
}
Widget mytextformfeild({required String lable, Icon? icon,TextEditingController? textEditingController}){
return TextFormField(
  obscureText: true,
  onTap:()
  { },
  onChanged: (value){},
controller: textEditingController,
  decoration: InputDecoration(
      label: Text(lable),
      suffixIcon: icon,
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.orange)),

      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20)
      )
  ),
);

}

