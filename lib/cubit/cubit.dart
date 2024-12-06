import 'dart:convert';
import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cutom_theme_light_dark/cubit/states.dart';

import '../cache_helper.dart';



class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);


  ////////////////////////////////////////////
  bool isDark = false;

  void changeAppMode({bool? value})
  {
    CacheHelper.sharPref.setBool('theme', value!).then((v) {
      isDark=value;
      emit(AppChangeThemeState());
    });

  }


}




