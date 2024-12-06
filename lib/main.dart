import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cutom_theme_light_dark/cubit/cubit.dart';
import 'package:flutter_cutom_theme_light_dark/cubit/states.dart';
import 'package:flutter_cutom_theme_light_dark/themes.dart';

import 'cache_helper.dart';
import 'home.dart';

// bool dark=false;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MultiBlocProvider(
      providers: [
        BlocProvider( create: (BuildContext context) =>AppCubit()),

      ],

      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          // we get type Theme from SharedPreferences
          if(CacheHelper.sharPref.getBool('theme') != null){
            AppCubit.get(context).isDark= CacheHelper.sharPref.getBool('theme')!;
          };
          return  MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: lightTheme,
          darkTheme: darkTheme,
          // we check type Theme
          themeMode:AppCubit.get(context).isDark?ThemeMode.dark:ThemeMode.light,

          home: Home(),
          );

        },

      ),
    );
  }
}







