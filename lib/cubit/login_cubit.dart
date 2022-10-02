
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orange/fristhome.dart';
import 'package:orange/login.dart';
import 'package:orange/view_model/Database/network/dio_exceptions.dart';
import '../view_model/Database/network/dio_helper.dart';
import '../view_model/Database/network/end_points.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInitialState());

  TextEditingController namelogincontroler = TextEditingController();
  TextEditingController passloginrcontroler = TextEditingController();
  static LoginCubit get(context) => BlocProvider.of(context);

  void userLogin(
      BuildContext context
) {
    emit(LoginLoadingState());
    DioHelper.postData(
      url: loginEndPoint,
      data: {
        "email":namelogincontroler.text,
        "password":passloginrcontroler.text,

      },
    ).then((value) {
      showTopSnackBar(
        context,
        CustomSnackBar.success(
          message:
          "Good job, your release is successful. Have a nice day",
        ),
      );
      print(value.data);
      Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),));
      emit(LoginSuccessState());

    }).catchError((error){

      print(error.toString());
      emit(LoginErrorState());
    });
  }
}

abstract class LoginStates {}

class LoginInitialState extends LoginStates {}

class LoginLoadingState extends LoginStates {}

class LoginSuccessState extends LoginStates {}

class LoginErrorState extends LoginStates {}

