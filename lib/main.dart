import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'modules/ui/auth_screens/login_screen.dart';
import 'modules/ui/auth_screens/sign_up_screen.dart';
import 'modules/ui/continue_screen.dart';
import 'modules/ui/home_screen/home_screen.dart';
import 'modules/ui/interface_screen.dart';
import 'modules/ui/password_screens/create_password_screen.dart';
import 'modules/ui/password_screens/forget_password_screen.dart';
import 'modules/ui/password_screens/verification_screen.dart';
import 'modules/ui/splash_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: const SplashScreen(),
            routes: {
              'InterfaceScreen': (context) => const InterfaceScreen(),
              'ContinueScreen': (context) => const ContinueScreen(),
              'LoginScreen': (context) => const LoginScreen(),
              'SignUpScreen': (context) => SignUpScreen(),
              'HomeScreen': (context) => const HomeScreen(),
              'ForgetPassword': (context) => const ForgetPassword(),
              'VerificationScreen': (context) => const VerificationScreen(),
              'CreatePasswordScreen': (context) => const CreatePasswordScreen(),
            },
          );
        });
  }
}
