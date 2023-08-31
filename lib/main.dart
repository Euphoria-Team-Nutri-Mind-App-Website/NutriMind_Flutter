import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'modules/ui/Patient_screens/patient_appointment/patient_book_appointment.dart';
import 'modules/ui/Patient_screens/patient_appointment/patient_review_screen.dart';
import 'modules/ui/Patient_screens/patient_auth_screens/patient_login_screen.dart';
import 'modules/ui/Patient_screens/patient_auth_screens/patient_sign_up_screen.dart';
import 'modules/ui/Patient_screens/patient_first_set_tall_weight_screens/patient_set_tall.dart';
import 'modules/ui/Patient_screens/patient_first_set_tall_weight_screens/patient_set_weight.dart';
import 'modules/ui/Patient_screens/patient_home_screen/doctor_list_for_patient.dart';
import 'modules/ui/Patient_screens/patient_appointment/patient_appointment_in_doctor.dart';
import 'modules/ui/Patient_screens/patient_home_screen/patient_nav_bar.dart';
import 'modules/ui/Patient_screens/patient_notifications/patient_notifications.dart';
import 'modules/ui/Patient_screens/patient_password_screens/patient_create_password_screen.dart';
import 'modules/ui/Patient_screens/patient_password_screens/patient_forget_password_screen.dart';
import 'modules/ui/Patient_screens/patient_password_screens/patient_verification_screen.dart';
import 'modules/ui/continue_screen.dart';
import 'modules/ui/doctor_screens/doctor_auth_screen/doctor_login_screen.dart';
import 'modules/ui/doctor_screens/doctor_auth_screen/doctor_sign_up_screen.dart';
import 'modules/ui/doctor_screens/doctor_passwords_screens/doctor_create_password_screen.dart';
import 'modules/ui/doctor_screens/doctor_passwords_screens/doctor_forget_password_screen.dart';
import 'modules/ui/doctor_screens/doctor_passwords_screens/doctor_verification_screen.dart';
import 'modules/ui/doctor_screens/doctor_schedule_&_patientinfo_screens/docter_patientinfo_screen.dart';
import 'modules/ui/doctor_screens/doctor_schedule_&_patientinfo_screens/doctor_schedule_screen.dart';
import 'modules/ui/interface_screen.dart';
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
              'PatientLoginScreen': (context) => const PatientLoginScreen(),
              'PatientSignUpScreen': (context) => PatientSignUpScreen(),
              'PatientForgetPassword': (context) => const PatientForgetPassword(),
              'PatientVerificationScreen': (context) => const PatientVerificationScreen(),
              'PatientCreatePasswordScreen': (context) => const PatientCreatePasswordScreen(),
              'PatientSetTallScreen': (context) => const PatientSetTallScreen(),
              'PatientSetWeightScreen': (context) => const PatientSetWeightScreen(),
              'PatientNavBarScreen': (context) => const PatientNavBarScreen(),
              'PatientNotificationsScreen': (context) => const PatientNotificationsScreen(),
              'PatientAppointmentInDoctor': (context) => const PatientAppointmentInDoctor(),
              'PatientBookAppointment': (context) => const PatientBookAppointment(),
              'PatientReviewScreen': (context) =>  const PatientReviewScreen(),
              'DoctorListForPatientScreen': (context) => const DoctorListForPatientScreen(),
              'DoctorLoginScreen': (context) => const DoctorLoginScreen(),
              'DoctorSignUpScreen': (context) => const DoctorSignUpScreen(),
              'DoctorForgetPassword': (context) => const DoctorForgetPassword(),
              'DoctorVerificationScreen': (context) => const DoctorVerificationScreen(),
              'DoctorCreatePasswordScreen': (context) => const DoctorCreatePasswordScreen(),
              'DoctorScheduleScreen': (context) => const DoctorScheduleScreen(),
              'Doctor_PatientInfo': (context) => const Doctor_PatientInfo(),

            },
          );
        });
  }
}
