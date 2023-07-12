import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:init_test_task/domain/notifiers/sign_in_notifiers/sign_in_state_notifier.dart';

@RoutePage()
class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  LoginPageStateState createState() => LoginPageStateState();
}

class LoginPageStateState extends ConsumerState<LoginPage> {
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
                      key: _formKey,
                      name: email,
                      autofillHints: const [AutofillHints.email],
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(),
                        FormBuilderValidators.email(),
                      ]),
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        hintText: 'Email',
                      ),
                    ),
                    //widget je obican model podatka, tako da mu stavim key kao poveznicu izmedu render i widget three-a, element povezuje render three s widgetom i svaki widget onda moze dobit preko elementa
                    FormBuilderTextField(
                      key: _formKey,
                      obscureText: true,
                      autofillHints: const [AutofillHints.password],
                      name: password,
                      validator: FormBuilderValidators.required(),
                      decoration: const InputDecoration(
                        hintText: 'Password',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 48.0),
                      child: ElevatedButton(
                        onPressed: () {
                          FocusScope.of(context).unfocus();
                          _formKey.currentState?.saveAndValidate();
                          if (_formKey.currentState?.isValid == true) {
                            ref
                                .read(signInFormNotifierProvider.notifier)
                                .submit(_formKey.currentState);
                          }
                        },
                        child: const Text('Login'),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
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

  // void _submit() {
  //   _formKey.currentState?.save();

  //   if (_formKey.currentState != null && _formKey.currentState!.validate()) {
  //     ref
  //         .read(signInFormNotifierProvider.notifier)
  //         .submit(_formKey.currentState);
  //   }
  // }
}
