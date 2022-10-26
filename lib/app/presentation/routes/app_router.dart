import 'package:blocarchitecture/app/logic/bloc/home_bloc/home_bloc.dart';
import 'package:blocarchitecture/app/logic/cubit/login_cubit/login_cubit.dart';
import 'package:blocarchitecture/app/presentation/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/exceptions/route_exception.dart';

class AppRouter {
  const AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.LOGIN:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => LoginCubit(),
            child: Container(),
          ),
        );
      case Routes.HOME:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => HomeBloc(),
            child: Container(),
          ),
        );
      default:
        throw const RouteException('Route not found!');
    }
  }
}
