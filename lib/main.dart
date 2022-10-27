import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:zoomapp/pages/home_page.dart';
import 'package:zoomapp/pages/login_page.dart';
import 'package:zoomapp/resources/auth_methods.dart';
import 'package:zoomapp/utils/colors_utils.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    // options: const FirebaseOptions(
    //     apiKey: "AIzaSyBfNaqR24xvPRI3jQJq35cwo91xqOyPJhA",
    //     appId: "1:1042674519169:web:0b9bbdf5add25dd5405180",
    //     messagingSenderId: "1042674519169",
    //     projectId: "flutter-zoom-app-8e494",
    // )
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor
      ),
      routes: {
        '/login': (context)=>LoginPage(),
        '/home':(context)=>HomePage()
      },
      home: StreamBuilder(
        stream: AuthMethods().authChange,
        builder: (context,snapshot){
          if(snapshot.connectionState==ConnectionState.waiting){
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if(snapshot.hasData){
            return HomePage();
          }
          return LoginPage();
        },
      ),
    );
  }
}

