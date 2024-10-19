import 'package:device_preview/device_preview.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'core/utils/app_colors.dart';

class SkkoolioApp extends StatelessWidget {
  const SkkoolioApp({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        locale: context.locale,
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.splashScreen,
        title: 'Skkoolio App',
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        theme: ThemeData(
          primaryColor: AppColors.mainColor,
          scaffoldBackgroundColor: AppColors.mainColor,
          fontFamily: 'ABeeZee',
        ),
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
