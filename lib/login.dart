import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orange/cubit/login_cubit.dart';
import 'package:orange/signup.dart';
import 'package:orange/view_model/Database/network/dio_helper.dart';

class Login extends StatelessWidget {
bool btn_login=true;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginStates>(
        listener: (context, state) {
          DioHelper.init();
          // TODO: implement listener
        },
        builder: (context, state) {
          return MaterialApp(
            home: Scaffold(
              body: SafeArea(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 100,
                            ),
                            Text(
                              'Orange',
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              ' Digital Center',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 100,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Login',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              controller: LoginCubit.get(context).namelogincontroler,
                              onTap: () {},
                              onChanged: (value) {},
                              decoration: InputDecoration(

                                  //  label: Text('email'),
                                  focusColor: Colors.orange,
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.orange)),
                                  hintText: "email",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20))),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              controller: LoginCubit.get(context).passloginrcontroler,
                              obscureText: true,
                              onTap: () {},
                              onChanged: (value) {},
                              decoration: InputDecoration(

                                  //  label: Text('pass'),
                                  suffixIcon: Icon(
                                    Icons.remove_red_eye,
                                    color: Colors.orange,
                                  ),
                                  hintText: "pass",
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.orange)),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20))),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              'Forgot Password?',
                              style: TextStyle(color: Colors.orange),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              height: 50.0,
                              width: 500,
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.orange)),
                                onPressed: () {
                                  btn_login=false;
                                  LoginCubit.get(context).userLogin(context,);


                                },
                                padding: EdgeInsets.all(10.0),
                                color: Colors.deepOrange,
                                textColor: Colors.white,
                                child: btn_login ?Text("Login",
                                    style: TextStyle(fontSize: 20)):CircularProgressIndicator(color: Colors.white,strokeWidth: 5,)
                              ),
                            ),
                            Row(children: <Widget>[
                              Expanded(child: Divider()),
                              Text("OR"),
                              Expanded(child: Divider()),
                            ]),
                            Container(
                              margin: EdgeInsets.all(10),
                              height: 50.0,
                              width: 500,
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.orange)),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Sign_up()));

                                },
                                padding: EdgeInsets.all(10.0),
                                color: Colors.white,
                                textColor: Colors.deepOrange,
                                child: Text("Sigh Up",
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
