import 'package:kuizapp/CoktanSecmeli.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kuizapp/Login.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
      routes: {
        '/kuiz': (context) => QuizPage(),
        '/login': (context) => LoginScreen(),
      },
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Center(
              child: Text(
                k.soru_metnini_yazdir(),
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(7),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          k.cevabi_kontrol_kismi("A");
                        });
                      },
                      child: Text(k.a_sikki_yaz()),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(7),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          k.cevabi_kontrol_kismi("B");
                        });
                      },
                      child: Text(k.b_sikki_yaz()),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(7),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          k.cevabi_kontrol_kismi("C");
                        });
                      },
                      child: Text(k.c_sikki_yaz()),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(7),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          k.cevabi_kontrol_kismi("D");
                        });
                      },
                      child: Text(k.d_sikki_yaz()),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(
            'Sonuc Bilgisi',
            style: TextStyle(fontSize: 20),
          ),
          Row(children: k.dogru_yanlis),
          SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}
