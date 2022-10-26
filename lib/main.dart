import 'package:blocarchitecture/app/core/theme/app_theme.dart';
import 'package:blocarchitecture/app/logic/debug/app_bloc_observer.dart';
import 'package:blocarchitecture/app/presentation/routes/app_router.dart';
import 'package:blocarchitecture/app/presentation/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  Bloc.observer = AppBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.HOME,
        onGenerateRoute: AppRouter.onGenerateRoute,
        home: Container());
  }
}
