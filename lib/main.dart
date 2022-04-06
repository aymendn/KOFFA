import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'providers/foods.dart';
import 'screens/about_screen.dart';
import 'screens/confirmation_screen.dart';
import 'screens/demand_screen.dart';
import 'screens/families_screen.dart';
import 'screens/family_details.dart';
import 'screens/home/home_screen.dart';
import 'screens/needy_demand_screen/needy_demand_screen.dart';
import 'screens/report_screen.dart';

import 'package:provider/provider.dart';

import 'constants.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

// set a list of alowed Orientations:
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FoodList(),
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: 'Cairo',
          primaryColor: kPrimaryColorDark,
          primarySwatch: Colors.teal,
          textTheme: TextTheme(
              titleMedium: Theme.of(context).textTheme.titleMedium?.copyWith()),
        ),

        // Arabic RTL
        localizationsDelegates: const [
          GlobalCupertinoLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: const [Locale("ar", "AE")],
        locale: const Locale("ar", "AE"),

        home: const HomeScreen(),
        routes: {
          AboutScreen.routeName: (context) => const AboutScreen(),
          ReportScreen.routeName: (context) => const ReportScreen(),
          ConfirmationScreen.routeName: (context) => const ConfirmationScreen(),
          NeedyDemandScreen.routeName: (context) => const NeedyDemandScreen(),
          DemandScreen.routeName: (context) => const DemandScreen(),
          FamiliesScreen.routeName: (context) => const FamiliesScreen(),
          FamilyDetails.routeName: (context) => const FamilyDetails(),
        },
      ),
    );
  }
}
