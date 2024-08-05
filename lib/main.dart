import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:vytal_trainer_app/models/auth_model.dart';
import 'package:vytal_trainer_app/screens/auth_page.dart';
import 'package:vytal_trainer_app/screens/confirm_transaction.dart';
import 'package:vytal_trainer_app/screens/home_food.dart';
import 'package:vytal_trainer_app/screens/main_layout.dart';
import 'package:vytal_trainer_app/screens/request-confirmed.dart';
import 'package:vytal_trainer_app/screens/signin.dart';
import 'package:vytal_trainer_app/screens/user-type.dart';
import 'package:vytal_trainer_app/utils/config.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyCcWgyTA5TP74hP8g6eQ26O8IdhwCiOSyo",
      appId: "1:542532453678:android:54a77e502e1da4db8fa6bf",
      messagingSenderId: "542532453678",
      projectId: "vytal-ce4f1",
      storageBucket: "vytal-ce4f1.appspot.com",
    ),
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //this is for push navigator
  static final navigatorKey = GlobalKey<NavigatorState>();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AuthModel>(
      create: (context) => AuthModel(),
      child: MaterialApp(
        navigatorKey: navigatorKey,
        title: 'Flutter Doctor App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme(
            Theme.of(context).textTheme,
          ),
          //pre-define input decoration
          inputDecorationTheme: const InputDecorationTheme(
            focusColor: Config.primaryColor,
            border: Config.outlinedBorder,
            focusedBorder: Config.focusBorder,
            errorBorder: Config.errorBorder,
            enabledBorder: Config.outlinedBorder,
            floatingLabelStyle: TextStyle(color: Config.primaryColor),
            prefixIconColor: Colors.black38,
          ),
          scaffoldBackgroundColor: Colors.white,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Config.primaryColor,
            selectedItemColor: Colors.white,
            showSelectedLabels: true,
            showUnselectedLabels: false,
            unselectedItemColor: Colors.grey.shade700,
            elevation: 10,
            type: BottomNavigationBarType.fixed,
          ),
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const AuthPage(),
          'main': (context) => const MainLayout(),
          '/user-type': (context) => const UserType(),
          '/sign-in': (context) => const Signin(),
          '/home-food': (context) => const HomeFood(),
          '/confirm-transaction': (context) => const ConfirmTransaction(),
          '/request-confirmed': (context) => const RequestConfirmed(),
        },
      ),
    );
  }
}

