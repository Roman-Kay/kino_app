import 'package:flutter/material.dart';
import 'package:kino_app/main.dart';
import 'package:kino_app/Theme/app_button_style.dart';
import 'package:kino_app/widgets/main_screen/main_screen_widget.dart';

class AuthWidget extends StatefulWidget {
  AuthWidget({Key? key}) : super(key: key);

  @override
  _AuthWidgetState createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login to your account"),
      ),
      body: ListView(
        children: [
          _HeaderWidget(),
        ],
      ),
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = const TextStyle(fontSize: 16, color: Colors.black);
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 25),
            _FormWidjet(),
            SizedBox(height: 25),
            Text(
              "In order to use the editing and rating capabilities of TMDb, as well as get personal recommendations you will need to jogin to your account. If you do not have account, registering for an account is free and simple.",
              style: textStyle,
            ),
            SizedBox(
              height: 5,
            ),
            TextButton(
                style: AppButtonStyle.linkButton,
                onPressed: () {},
                child: Text("Register")),
            SizedBox(height: 25),
            Text(
              "If you signed up but didn't get your verication email.",
              style: textStyle,
            ),
            SizedBox(
              height: 5,
            ),
            TextButton(
                style: AppButtonStyle.linkButton,
                onPressed: () {},
                child: Text("Verification email")),
          ],
        ));
  }
}

class _FormWidjet extends StatefulWidget {
  _FormWidjet({Key? key}) : super(key: key);

  @override
  __FormWidjetState createState() => __FormWidjetState();
}

class __FormWidjetState extends State<_FormWidjet> {
  final _loginTextControler = TextEditingController(text: 'admin');
  final _passwordTextControler = TextEditingController(text: 'admin');
  String? errorText = null;
  void _auth() {
    final login = _loginTextControler.text;
    final password = _passwordTextControler.text;
    if (login == 'admin' && password == 'admin') {
      errorText = null;

      Navigator.of(context).pushReplacementNamed('/main_screen');
    } else {
      errorText = 'Неверный логин или пароль';
    }
    setState(() {});
  }

  void _resetPassword() {
    print('reset password');
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = const TextStyle(
      fontSize: 16,
      color: Color(0xFF212529),
    );
    final color = const Color(0xFF01B4E4);
    final textFieldDecorator = const InputDecoration(
      border: OutlineInputBorder(),
      contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      isCollapsed: true,
    );
    final errorText = this.errorText;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (errorText != null) ...[
          Text(
            errorText,
            style: TextStyle(
              color: Colors.red,
              fontSize: 17,
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
        Text(
          "Username",
          style: textStyle,
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          decoration: textFieldDecorator,
          controller: _loginTextControler,
        ),
        SizedBox(height: 20),
        Text(
          "Password",
          style: textStyle,
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          decoration: textFieldDecorator,
          obscureText: true,
          controller: _passwordTextControler,
        ),
        SizedBox(
          height: 25,
        ),
        Row(
          children: [
            ElevatedButton(
                onPressed: _auth,
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(color),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    textStyle: MaterialStateProperty.all(
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 8,
                    ))),
                child: Text("Login")),
            SizedBox(
              width: 30,
            ),
            TextButton(
                onPressed: _resetPassword,
                style: AppButtonStyle.linkButton,
                child: Text("Reset password"))
          ],
        )
      ],
    );
  }
}
