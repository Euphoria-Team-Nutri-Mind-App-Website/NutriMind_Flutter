import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutri_mind_application/core/network/local_network.dart';
import 'package:nutri_mind_application/modules/blocs/patient_auth_cubit/auth_cubit/auth_cubit.dart';
import 'package:nutri_mind_application/routes.dart';
import 'package:nutri_mind_application/shared/Constants/constants.dart';
import 'core/block_observer/bloc_observer.dart';
import 'modules/ui/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await CacheNetwork.cacheInitialization();
  token= CacheNetwork.getCacheData(key: 'token');
  print("token is $token");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers:
          [
            BlocProvider(create: (create)=>AuthCubit()),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home:const SplashScreen(),
            routes: routes,
          ),
        );
      },
    );
  }
}
