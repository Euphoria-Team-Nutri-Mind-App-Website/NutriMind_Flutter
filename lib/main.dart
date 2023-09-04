import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'modules/ui/Patient_screens/patient_appointment/patient_book_appointment.dart';
import 'modules/ui/Patient_screens/patient_appointment/patient_choose_payment_screen.dart';
import 'modules/ui/Patient_screens/patient_appointment/patient_review_screen.dart';
import 'modules/ui/Patient_screens/patient_auth_screens/patient_login_screen.dart';
import 'modules/ui/Patient_screens/patient_auth_screens/patient_sign_up_screen.dart';
import 'modules/ui/Patient_screens/patient_chat_screens/Patient_call_screen.dart';
import 'modules/ui/Patient_screens/patient_chat_screens/patient_chat_screen.dart';
import 'modules/ui/Patient_screens/patient_chat_screens/patient_list_chats_screen.dart';
import 'modules/ui/Patient_screens/patient_home_screen/doctor_list_for_patient.dart';
import 'modules/ui/Patient_screens/patient_appointment/patient_appointment_in_doctor.dart';
import 'modules/ui/Patient_screens/patient_home_screen/patient_nav_bar.dart';
import 'modules/ui/Patient_screens/patient_library_screen/patient_library_screen.dart';
import 'modules/ui/Patient_screens/patient_motivzone_screen/patient_motivzone_screen.dart';
import 'modules/ui/Patient_screens/patient_notes_screen/patient_add_notes.dart';
import 'modules/ui/Patient_screens/patient_notes_screen/patient_notes_screen.dart';
import 'modules/ui/Patient_screens/patient_notifications/patient_notifications.dart';
import 'modules/ui/Patient_screens/patient_password_screens/patient_create_password_screen.dart';
import 'modules/ui/Patient_screens/patient_password_screens/patient_forget_password_screen.dart';
import 'modules/ui/Patient_screens/patient_password_screens/patient_verification_screen.dart';
import 'modules/ui/Patient_screens/patient_profile&settings&report/patient_help&support_screen.dart';
import 'modules/ui/Patient_screens/patient_profile&settings&report/patient_profile.dart';
import 'modules/ui/Patient_screens/patient_profile&settings&report/patient_report.dart';
import 'modules/ui/Patient_screens/patient_profile&settings&report/patient_setting_screen.dart';
import 'modules/ui/Patient_screens/patient_puzzle_screens/puzzle_end_screen.dart';
import 'modules/ui/Patient_screens/patient_puzzle_screens/puzzle_start_screen.dart';
import 'modules/ui/Patient_screens/patient_question_screen/patient_question_screen.dart';
import 'modules/ui/Patient_screens/patient_question_screen/patient_question_screen_five.dart';
import 'modules/ui/Patient_screens/patient_question_screen/patient_question_screen_four.dart';
import 'modules/ui/Patient_screens/patient_question_screen/patient_question_screen_three.dart';
import 'modules/ui/Patient_screens/patient_question_screen/patient_question_screen_two.dart';
import 'modules/ui/Patient_screens/patient_set_tall_weight_state_screens/patient_choose_your_state_screen_1.dart';
import 'modules/ui/Patient_screens/patient_set_tall_weight_state_screens/patient_choose_your_state_screen_2.dart';
import 'modules/ui/Patient_screens/patient_set_tall_weight_state_screens/patient_set_tall.dart';
import 'modules/ui/Patient_screens/patient_set_tall_weight_state_screens/patient_set_weight.dart';
import 'modules/ui/Patient_screens/patient_track_eat_screen/patient_track_eat_screen.dart';
import 'modules/ui/continue_screen.dart';
import 'modules/ui/doctor_screens/doctor_auth_screen/doctor_choose_time_screen.dart';
import 'modules/ui/doctor_screens/doctor_auth_screen/doctor_login_screen.dart';
import 'modules/ui/doctor_screens/doctor_auth_screen/doctor_sign_up_screen.dart';
import 'modules/ui/doctor_screens/doctor_passwords_screens/doctor_create_password_screen.dart';
import 'modules/ui/doctor_screens/doctor_passwords_screens/doctor_forget_password_screen.dart';
import 'modules/ui/doctor_screens/doctor_passwords_screens/doctor_verification_screen.dart';
import 'modules/ui/doctor_screens/doctor_profile/doctor_help&support_screen.dart';
import 'modules/ui/doctor_screens/doctor_profile/doctor_profile.dart';
import 'modules/ui/doctor_screens/doctor_profile/doctor_settings_screen.dart';
import 'modules/ui/doctor_screens/doctor_schedule_&_patientinfo_&_Report_screens/docter_patientinfo_screen.dart';
import 'modules/ui/doctor_screens/doctor_schedule_&_patientinfo_&_Report_screens/doctor_report_screen.dart';
import 'modules/ui/doctor_screens/doctor_schedule_&_patientinfo_&_Report_screens/doctor_schedule_screen.dart';
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
            routes: <String, WidgetBuilder>{
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
              'PatientReviewScreen': (context) => const PatientReviewScreen(),
              'DoctorListForPatientScreen': (context) => const DoctorListForPatientScreen(),
              'DoctorLoginScreen': (context) => const DoctorLoginScreen(),
              'DoctorSignUpScreen': (context) => const DoctorSignUpScreen(),
              'DoctorForgetPassword': (context) => const DoctorForgetPassword(),
              'DoctorVerificationScreen': (context) => const DoctorVerificationScreen(),
              'DoctorCreatePasswordScreen': (context) => const DoctorCreatePasswordScreen(),
              'DoctorScheduleScreen': (context) => const DoctorScheduleScreen(),
              'Doctor_PatientInfo': (context) => const Doctor_PatientInfo(),
              'DoctorReport': (context) => const DoctorReport(),
              'DoctorProfile': (context) => const DoctorProfile(),
              'PatientChoosePaymentScreen': (context) => const PatientChoosePaymentScreen(),
              'DoctorSettingScreen': (context) => const DoctorSettingScreen(),
              'DoctorHelpAndSupport': (context) => const DoctorHelpAndSupport(),
              'PatientListChatsScreen': (context) => const PatientListChatsScreen(),
              'PuzzleStartScreen': (context) => const PuzzleStartScreen(),
              'PuzzleEndScreen': (context) => const PuzzleEndScreen(),
              'PatientProfile': (context) => const PatientProfile(),
              'PatientSettingScreen': (context) => const PatientSettingScreen(),
              'PatientMotivzoneScreen': (context) => const PatientMotivzoneScreen(),
              'PatientNotesScreen': (context) => const PatientNotesScreen(),
              'PatientQuestionScreen': (context) => const PatientQuestionScreen(),
              'PatientLibraryScreen': (context) => const PatientLibraryScreen(),
              'PatientTrackEatingScreen': (context) => const PatientTrackEatingScreen(),
              'PatientReport': (context) => const PatientReport(),
              'PatientHelpAndSupport': (context) => const PatientHelpAndSupport(),
              'DoctorChooseTimeScreen': (context) => const DoctorChooseTimeScreen(),
              'PatientChatScreen': (context) => const PatientChatScreen(),
              'PatientCallScreen': (context) => const PatientCallScreen(),
              'PatientAddNotes': (context) => const PatientAddNotes(),
              'PatientQuestionScreenTwo': (context) => const PatientQuestionScreenTwo(),
              'PatientQuestionScreenThree': (context) => const PatientQuestionScreenThree(),
              'PatientQuestionScreenFour': (context) => const PatientQuestionScreenFour(),
              'PatientQuestionScreenFive': (context) => const PatientQuestionScreenFive(),
              'PatientChooseYourStateScreen1': (context) => const PatientChooseYourStateScreen1(),
              'PatientChooseYourStateScreen2': (context) => const PatientChooseYourStateScreen2(),
            },
          );
        });
  }
}
