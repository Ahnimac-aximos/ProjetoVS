import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projeto15/components/login/custom_login_button_component.dart';
import 'package:projeto15/components/widgets/custom_text_field_widget.dart';
import 'package:projeto15/controllers/login_controller.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  LoginController _controller = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(28),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.people,
                size: 98,
              ),
              CustomTExtFieldWidget(
                  onChanged: _controller.setLogin, label: 'Login'),
              CustomTExtFieldWidget(
                onChanged: _controller.setPass,
                label: 'Senha',
                obscureText: true,
              ),
              SizedBox(
                height: 15,
              ),
              CustomLoginButtonComponent(
                loginController: _controller,
              ),
            ]),
      ),
    );
  }
}
