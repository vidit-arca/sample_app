import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sample_app/screens/home/home_page.dart';
import 'package:sample_app/screens/login/login_page.dart';
import 'package:sample_app/screens/forms/multi_step_form.dart';
 
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyCE6-KwqD6feJVKwCYnU1v9hFlloauGUgE",
        authDomain: "medicollect-3ccea.firebaseapp.com",
        projectId: "medicollect-3ccea",
        storageBucket: "medicollect-3ccea.firebasestorage.app",
        messagingSenderId: "941249005997",
        appId: "1:941249005997:web:10cdf8cb6bd70bad903924",
        measurementId: "G-V21QXTLYED",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MediCollect',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AuthWrapper(), // Dynamically decide the initial screen
      routes: {
        '/login': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
        '/form': (context) => const MultiStepForm(),
      },
    );
  }
}

class AuthWrapper extends StatelessWidget {
  const AuthWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasData) {
          return const HomePage(); // Redirect to home if logged in
        }
        return const LoginPage(); // Redirect to login if not logged in
      },
    );
  }
}
