import 'package:breakingbad/business/cubit/character_cubit.dart';
import 'package:breakingbad/data/repository/character_repo.dart';
import 'package:breakingbad/data/web_services/character_web_servise.dart';
import 'package:breakingbad/presentation/screens/characters.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import 'business/block_observer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  BlocOverrides.runZoned(
    () {
      runApp(const MyApp());
    },
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CharacterCubit(CharacterRepo(CharacterWebServices()))
        ..getAllCharacters(),
      child: StreamBuilder<Object>(
          stream: Connectivity().onConnectivityChanged,
          builder: (context, AsyncSnapshot snapshot) {
            // ignore: unnecessary_null_comparison
            if (snapshot == null) {
              return const Center(child: CircularProgressIndicator());
            }
            var result = snapshot.data;
            switch (result) {
              case ConnectivityResult.mobile:
              case ConnectivityResult.wifi:
                return GetMaterialApp(
                  home: CharactersScreens(),
                );

              case ConnectivityResult.none:
              default:
                return const GetMaterialApp(
                  home:  Scaffold(
                    body: Center(
                      child: Text("No Internet Connection"),
                    ),
                  ),
                );
            }
          }),
    );
  }
}
