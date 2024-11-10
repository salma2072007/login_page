import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
        title: 'Flutter Hello World',
        // Application theme data, you can set the colors for the application as
        // you want
        theme: ThemeData(
          // useMaterial3: false,
          primarySwatch: Colors.blue,
        ),
        home: MyApp()
      // A widg et which will be started on application startup
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title:
        Text("Login Page", style: TextStyle(fontSize: 50,)),
        // The title text which will be shown on the action bar
      ),
      body: Center(
          child: Column(
            children: [
              Image.network(
                "https://www.google.com/search?sca_esv=b10113c690fbab05&rlz=1C1NHXL_enEG1082EG1083&sxsrf=ADLYWIJJwECTpdZEHPII_p5qfVdF6C-ttQ:1729140854007&q=flutter+image&udm=2&fbs=AEQNm0Aa4sjWe7Rqy32pFwRj0UkWd8nbOJfsBGGB5IQQO6L3J_86uWOeqwdnV0yaSF-x2jon2iao6KWCaVjfn7ahz_sfz4kQc-hbvsXJ2gNx0RnV2nl305mvoek0YK94ylYY2a4b3Q-OEwW5lKppi2wujywZWmdIJVp8wrsv_g-eh5sWEDXx8JNpgmjsiKj2mZMvftPlZJZz&sa=X&ved=2ahUKEwiOm_rSz5SJAxXxVKQEHWu6FyEQtKgLegQIExAB&biw=1536&bih=686&dpr=1.25#vhid=cERsoqMzl4MpVM&vssid=mosaic",height: 50,width: 60,),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),

                  ),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              TextButton(onPressed: () {}, child: Text("Forgot Password")),
              ElevatedButton(onPressed: () {}, child: Text("Login")),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Text("New Account"),
                  TextButton(onPressed: () {}, child: Text("Create Account")),
                ],
              ),
            ],
          )),
    );
  }
}
