import 'package:e_commerce_app/core/helper/responsive_extensions.dart';
import 'package:e_commerce_app/core/helper/spacing.dart';
import 'package:e_commerce_app/core/widgets/custom_button.dart';
import 'package:e_commerce_app/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

import '../../../../../core/helper/validation.dart';
import '../../logic/signup_cubit.dart';
import '../../logic/signup_state.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final SignupCubit _cubit = SignupCubit();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _cubit.dispose();
    super.dispose();
  }

  void _onSignup() {
    if (!_formKey.currentState!.validate()) return;
    _cubit.signup(_emailController.text, _passwordController.text);
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _cubit.state,
      builder: (context, state, _) {
        return Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomTextField(
                controller: _emailController,
                label: 'Email',
                hint: 'Enter your email address',
                keyboardType: TextInputType.emailAddress,
                prefixIcon: const Icon(Icons.email_rounded),
                validator: AppValidator.validateEmail,
                textInputAction: TextInputAction.next,
              ),
              
              verticalSpace(context, height: 16),
              
              CustomTextField(
                controller: _passwordController,
                label: 'Password',
                hint: 'Create a strong password',
                obscureText: true,
                prefixIcon: const Icon(Icons.lock_rounded),
                validator: AppValidator.validatePassword,
                textInputAction: TextInputAction.done,
              ),
              
              verticalSpace(context, height: 24),
              
              CustomButton(
                text: 'CREATE ACCOUNT',
                onPressed: state.status == AuthStatus.loading ? null : _onSignup,
                isLoading: state.status == AuthStatus.loading,
                height: 56.h(context),
              ),

              if (state.status == AuthStatus.error)
                Padding(
                  padding: context.responsivePadding(top: 16),
                  child: Container(
                    padding: context.responsivePadding(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.red.shade50,
                      borderRadius: BorderRadius.circular(12.r(context)),
                      border: Border.all(
                        color: Colors.red.shade200,
                        width: 1,
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.error_outline_rounded,
                          color: Colors.red.shade700,
                          size: 20,
                        ),
                        horizontalSpace(context, width: 12),
                        Expanded(
                          child: Text(
                            state.message ?? 'An error occurred',
                            style: TextStyle(
                              color: Colors.red.shade700,
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}