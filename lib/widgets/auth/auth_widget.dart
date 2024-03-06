import 'package:flutter/material.dart';
import 'package:social_vk/widgets/auth/main_screen/main_screen_widget.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({super.key});

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  final backgroundTheme = const Color(0xFFD8D9DA);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundTheme,
      appBar: AppBar(),
      body: const _FormWidget(),
    );
  }
}

class _FormWidget extends StatefulWidget {
  const _FormWidget({super.key});

  @override
  State<_FormWidget> createState() => __FormWidgetState();
}

class __FormWidgetState extends State<_FormWidget> {
  final _loginTextController = TextEditingController(text: 'admin');
  final _passwordTextController = TextEditingController(text: 'admin');

  String? errorText = '';

  void _auth() {
    final login = _loginTextController.text;

    final password = _passwordTextController.text;

    if (login == 'admin' && password == 'admin') {
      errorText = null;
      Navigator.of(context).pushReplacementNamed('/main_screen');
    } else {
      errorText = 'Error: wrong login or password';
    }
    setState(() {});
  }

  void _resetPassword() {
    print('reset password');
  }

  @override
  Widget build(BuildContext context) {
    //start Вот тут стили текста запихнуть в один объект, чтобы не засорять тут код
    const colorCursor = Color.fromARGB(0, 157, 157, 157);

    const colorElements = Color(0xFF272829);

    const labelstyles = TextStyle(
      color: Color.fromARGB(255, 135, 135, 135),
      fontSize: 17,
      fontWeight: FontWeight.w500,
    );

    const buttonStyle = TextStyle(
      color: colorElements,
      fontSize: 15,
      fontWeight: FontWeight.w500,
    );

    const colorButton = Color.fromARGB(255, 161, 165, 173);

    const textStyleLabel = TextStyle(
      color: colorElements,
      fontSize: 17,
      fontWeight: FontWeight.w500,
    );
    final errorText = this.errorText;
    //end Стили текста

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (errorText != null)
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                '$errorText',
                style: textStyleLabel,
              ),
            ),
          const Spacer(
            flex: 1,
          ),
          const Text(
            'Login',
            style: TextStyle(
                fontSize: 25,
                color: Color.fromARGB(255, 43, 43, 43),
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            //оптимизировать, ниже есть код, ктр повторяется - это не ок
            controller: _loginTextController,
            cursorColor: colorCursor,
            style: textStyleLabel,
            decoration: InputDecoration(
              labelText: 'Username',
              labelStyle: labelstyles,
              isCollapsed: false,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: const BorderSide(
                  color: Color.fromARGB(255, 87, 87, 125),
                  width: 2,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            //вот тут оптимизировать
            controller: _passwordTextController,
            obscureText: true,
            cursorHeight: null,
            cursorColor: colorCursor,
            style: textStyleLabel,
            decoration: InputDecoration(
              labelText: 'Password',
              labelStyle: labelstyles,
              isCollapsed: false,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: const BorderSide(
                  color: Color.fromARGB(255, 87, 87, 125),
                  width: 2,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: _auth,
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(colorButton),
                ),
                child: const Padding(
                  padding:
                      EdgeInsets.only(top: 5, bottom: 5, right: 10, left: 10),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 17,
                      color: colorElements,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: _resetPassword,
                child: const Text(
                  'Reset password',
                  style: buttonStyle,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Register',
                  style: buttonStyle,
                ),
              ),
            ],
          ),
          const Spacer(
            flex: 3,
          ),
        ],
      ),
    );
  }
}
