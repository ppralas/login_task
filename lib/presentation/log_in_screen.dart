import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:init_test_task/domain/notifiers/sign_in_notifiers/sign_in_state_notifier.dart';

class LoginPageState extends ConsumerStatefulWidget {
  const LoginPageState({Key? key}) : super(key: key);

  @override
  LoginPageStateState createState() => LoginPageStateState();
}

class LoginPageStateState extends ConsumerState<LoginPageState> {
  final AutovalidateMode _validateMode = AutovalidateMode.disabled;
  final _formKey = GlobalKey<FormBuilderState>();
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Screen'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                ),
                child: FormBuilder(
                  key: _formKey,
                  autovalidateMode: _validateMode,
                  child: Column(
                    children: [
                      FormBuilderTextField(
                        name: email,
                        autofillHints: const [AutofillHints.email],
                        onSubmitted: (value) => _submit(),
                        validator: FormBuilderValidators.email(),
                        decoration: const InputDecoration(
                          hintText: 'Email',
                        ),
                      ),
                      FormBuilderTextField(
                        obscureText: true,
                        autofillHints: const [AutofillHints.password],
                        name: password,
                        onSubmitted: (value) => _submit(),
                        validator: FormBuilderValidators.required(),
                        decoration: const InputDecoration(
                          hintText: 'Password',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 36.0),
                        child: ElevatedButton(
                          onPressed: () {
                            ref.read(signInFormNotifierProvider.notifier);
                            log(signInFormNotifierProvider.notifier.toString());
                          },
                          child: const Text('Login'),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }

  // String? emailValidator(String? value) {
  //   final emailRegex = RegExp(
  //     r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
  //   );
  //   if (value == null || value.isEmpty) {
  //     return 'Email is required';
  //   } else if (!emailRegex.hasMatch(value)) {
  //     return 'Invalid email';
  //   }
  //   return null;
  // }

  // String? passwordValidator(String? value) {
  //   RegExp passwordRegex = RegExp(r'^(?=.*[A-Z])(?=.*\d).{8,}$');
  //   if (value == null) return "Password can't be empty";
  //   if (!passwordRegex.hasMatch(value)) {
  //     return 'Password must contain at least one uppercase letter';
  //   }
  //   return null;
  // }
  void _submit() {
    _formKey.currentState?.save();

    if (_formKey.currentState != null && _formKey.currentState!.validate()) {
      ref
          .read(signInFormNotifierProvider.notifier)
          .submit(_formKey.currentState);
    }
  }
}
