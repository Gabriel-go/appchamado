import 'dart:convert';

import 'package:http/http.dart' as http;

class SignUpService {
  Future<bool> signUp(String email, String senha) async {
    var url = Uri.parse(
        "https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyAlZxmOyxVdvv4GUA5MFugTAvODf6_STTg");
    var response = await http.post(
      url,
      body: json.encode(
        {
          "email": email,
          "password": senha,
          "returnSecureToken": true,
        },
      ),
    );

    print(response.headers);
    return true;
  }

  Future<bool> signIn(String email, String senha) async {
    var url = Uri.parse(
        "https://identitytoolkit.googleapis.com/v1/accounts:signInWithCustomToken?key=AIzaSyAlZxmOyxVdvv4GUA5MFugTAvODf6_STTg");
    var response = await http.post(
      url,
      body: json.encode(
        {
          "email": email,
          "password": senha,
          "returnSecureToken": true,
        },
      ),
    );

    print(response.body);
    return true;
  }
}
