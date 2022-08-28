import 'package:fefifo_test/utils/text_form_field_validator.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();
  late BuildContext context;

  void loginSubmit() {
    final valid = formKey.currentState!.validate();
    if (valid) {
      Navigator.pushReplacementNamed(context, '/home');
    }
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/Fefifo-Logo.png"),
                const SizedBox(height: 20),
                Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Email"),
                      emailTextFormField(),
                      const SizedBox(height: 20),
                      const Text("Password"),
                      passwordTextFormField(),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(vertical: 25)),
                            onPressed: loginSubmit,
                            child: const Text("Login")),
                      ),
                      const SizedBox(height: 20),
                      TextButton(onPressed: () {}, child: const Text("Forgot Password?"))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget emailTextFormField() {
    return TextFormField(
      decoration: const InputDecoration(hintText: "Email"),
      validator: (value) {
        return TextFormFieldValidator.emailValidator(value!);
      },
    );
  }

  Widget passwordTextFormField() {
    return TextFormField(
      decoration: const InputDecoration(hintText: "Password"),
      obscureText: true,
      validator: (value) {
        return TextFormFieldValidator.passwordValidator(value!);
      },
    );
  }
}
