import 'package:flutter/material.dart';
import 'package:skkoolio/core/routing/routes.dart';
import 'package:skkoolio/features/assignment_feature/presentation/screens/assignments_details.dart';
import 'package:skkoolio/features/login_feature/presentation/screens/login_screen.dart';
import '../../features/assignment_feature/presentation/screens/assignment_screen.dart';
import '../../features/choose_account_feature/presentation/screens/choose_account_screen.dart';
import '../../features/drawer_screens/attendance_feature/presentation/screens/attendance_screen.dart';
import '../../features/drawer_screens/messages_feature/presentation/screens/messages_screen.dart';
import '../../features/drawer_screens/our_mission_feature/presentation/screen/our_mission_screen.dart';
import '../../features/drawer_screens/settings_feature/presentation/screens/settings_screen.dart';
import '../../features/drawer_screens/student_behavior_feature/presentation/screen/student_behavior_screen.dart';
import '../../features/events_feature/presentation/screens/event_detail_screen.dart';
import '../../features/events_feature/presentation/screens/events_screen.dart';
import '../../features/home_feature/presentation/screens/home_screen.dart';
import '../../features/login_feature/presentation/screens/otp_screen.dart';
import '../../features/notification_feature/presentation/screens/notification_screen.dart';
import '../../features/onboarding_feature/presentation/screen/onboarding_screen.dart';
import '../../features/splash_feature/presentation/screens/splash_screen.dart';
import '../../root_screen.dart';


class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return CustomPageRoute(widget: const SplashScreen());
        case Routes.onboardingScreen:
        return CustomPageRoute(widget: const OnboardingScreen());
        case Routes.loginScreen:
        return CustomPageRoute(widget: const LoginScreen());
        case Routes.homeScreen:
          final arguments = settings.arguments as Map<String, String>;

          return CustomPageRoute(widget:  HomeScreen(studentName:  arguments['studentName']!,));
        case Routes.rootScreen:
          final arguments = settings.arguments as Map<String, String>;
        return CustomPageRoute(widget:  RootScreen(studentName:  arguments['studentName']!,));
        case Routes.otpScreen:
        return CustomPageRoute(widget: const OtpScreen());
      case Routes.chooseAccountScreen:
        return CustomPageRoute(widget: const ChooseAccountScreen());
        case Routes.notificationScreen:
        return CustomPageRoute(widget: const NotificationScreen());
        case Routes.messagesScreen:
        return CustomPageRoute(widget: const MessagesScreen());
        case Routes.assignmentScreen:
        return CustomPageRoute(widget: const AssignmentScreen());
        case Routes.assignmentDetailsScreen:
          final arguments = settings.arguments as Map<String, String>;
        return CustomPageRoute(widget:   AssignmentsDetails(title:arguments['title']! , date:arguments['date']! , status:arguments['status']! ));
        case Routes.attendanceScreen:
        return CustomPageRoute(widget: const AttendanceScreen());
        case Routes.studentBehaviorScreen:
        return CustomPageRoute(widget: const StudentBehaviorScreen());
        case Routes.settingsScreen:
        return CustomPageRoute(widget: const SettingsScreen());
        case Routes.ourMissionScreen:
        return CustomPageRoute(widget: const OurMissionScreen());
        case Routes.eventsScreen:
        return CustomPageRoute(widget: const EventsScreen());
        case Routes.eventDetailScreen:
          final arguments = settings.arguments as Map<String, String>;
        return CustomPageRoute(widget:EventDetailScreen(img: arguments['img']!, title: arguments['title']!, titleBody: arguments['titleBody']!));

      default:
        return null;
    }
  }
}


class CustomPageRoute extends PageRouteBuilder {
  final Widget widget;
  CustomPageRoute({required this.widget})
      : super(
    transitionDuration:  const Duration(milliseconds:  200),
    pageBuilder: (context, animation, secondaryAnimation) => widget,
  );

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) =>
      ScaleTransition(
          scale: animation,
        child: child,
      );

}