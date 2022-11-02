import 'package:blocarchitecture/app/core/logic/cubit/auth_cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocProviders {
  List<BlocProvider> get providers => [
        BlocProvider(create: (context) => AuthCubit(), child: Container()),
      ];
}
