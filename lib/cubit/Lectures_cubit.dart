import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orange/fristhome.dart';
import 'package:orange/lectures.dart';
import 'package:orange/login.dart';
import 'package:orange/model/lectures_model.dart';
import 'package:orange/view_model/Database/network/dio_exceptions.dart';
import '../view_model/Database/network/dio_helper.dart';
import '../view_model/Database/network/end_points.dart';


class Lectures_cubit extends Cubit<LecturesStates> {
  Lectures_cubit() : super(ShopInitialState());

  static Lectures_cubit get(context) => BlocProvider.of(context);

  Lecture_model? lectures_model;
  void getHomeData() {
    emit(GetHomeDataLoadingState());
    DioHelper.getData(
        url: lectureEndPoint,
      token: token
    ).then((value) {
      lectures_model=Lecture_model.fromJson(value.data);
    //  print(value.data);
     // print(lectures_model!.data![3].lectureSubject);

      emit(GetHomeDataSuccessState());
    }).catchError((error){
   //   print('hhhhhhhhhhhhhhhhhhhhhh');
      print(error.toString());
      emit(GetHomeDataErrorState());
    });
  }
}

abstract class LecturesStates {}

class ShopInitialState extends LecturesStates {}
class ChangeBottomIndexState extends LecturesStates {}
class GetHomeDataLoadingState extends LecturesStates {}
class GetHomeDataSuccessState extends LecturesStates {}
class GetHomeDataErrorState extends LecturesStates {}
