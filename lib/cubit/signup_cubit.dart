
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orange/fristhome.dart';
import 'package:orange/login.dart';
import 'package:orange/signup.dart';
import 'package:orange/view_model/Database/network/dio_exceptions.dart';
import '../view_model/Database/network/dio_helper.dart';
import '../view_model/Database/network/end_points.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/safe_area_values.dart';
import 'package:top_snackbar_flutter/tap_bounce_container.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class SignupCubit extends Cubit<SignupStates> {
  SignupCubit() : super(SgnupInitialState());
  TextEditingController namesignupcontroler = TextEditingController();
  TextEditingController emailsignuocontroler = TextEditingController();
  TextEditingController phonecontroler = TextEditingController();
  TextEditingController passsignupcontroler = TextEditingController();
  TextEditingController passsignup2controler = TextEditingController();

  static SignupCubit get(context) => BlocProvider.of(context);

  void userSignup(
      BuildContext context
) {
    emit(SgnupLoadingState());
    DioHelper.postData(
      url: registerEndPoint,
      data: {
        "email":emailsignuocontroler.text,
        "password":passsignupcontroler.text,
        "name":namesignupcontroler.text,
       // "password":passsignup2controler.text.toString(),
        "phoneNumber":phonecontroler.text,
        "universityId":1,
        "gradeId":4,
        "roleId":2,
        "gender":"m"
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
      emit(SgnupSuccessState());

    }).catchError((error){
print('hhhhhhhhhhhhhhhhhh');
      print(error.toString());
      emit(SgnupErrorState());
    });
  }
}

abstract class SignupStates {}

class SgnupInitialState extends SignupStates {}

class SgnupLoadingState extends SignupStates {}

class SgnupSuccessState extends SignupStates {}

class SgnupErrorState extends SignupStates {}

