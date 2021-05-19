import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:sp_adm_new/cubit/program_cubit.dart';
import 'package:sp_adm_new/ui/pages/pages.dart';

import 'cubit/cubit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => UserCubit()),
        BlocProvider(create: (_) => MerchandiseCubit()),
        BlocProvider(create: (_) => ProgramCubit()),
        BlocProvider(create: (_) => ComplaintCubit()),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'SP-ADM',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          canvasColor: Colors.transparent,
        ),
        home: SplashScreen(),
      ),
    );
  }
}
