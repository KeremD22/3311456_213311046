import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: Text('KuizApp'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Kullanıcı Adı',
              ),
            ),
            SizedBox(height: 12.0,width:5.0,),
            ElevatedButton(
              onPressed: () {
                String username = _usernameController.text.trim();
                if (username.isNotEmpty) {
                  Navigator.of(context).pushReplacementNamed('/kuiz');
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Hoş geldin, $username')));
                }
              },
              child: Text('Giriş Yap'),
            ),
          ],
        ),
      ),
    );
  }
}
