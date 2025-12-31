import 'package:flutter/material.dart';
import '../../../../../core/helper/responsive_extensions.dart';
import '../../../../../core/helper/spacing.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_field.dart';
import '../../../../../core/helper/validation.dart';
import '../../logic/login_cubit.dart';
import '../../logic/login_state.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final LoginCubit _cubit = LoginCubit();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _cubit.dispose();
    super.dispose();
  }

  void _onLogin() async {
    if (!_formKey.currentState!.validate()) return;
    _cubit.login(_emailController.text, _passwordController.text);
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<LoginState>(
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
                hint: 'Enter your password',
                obscureText: true,
                prefixIcon: const Icon(Icons.lock_rounded),
                validator: AppValidator.validatePassword,
                textInputAction: TextInputAction.done,
              ),
              
              verticalSpace(context, height: 8),
              
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    // Navigate to forgot password
                  },
                  style: TextButton.styleFrom(
                    padding: context.responsivePadding(
                      horizontal: 8,
                      vertical: 4,
                    ),
                  ),
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.orange,
                    ),
                  ),
                ),
              ),
              
              verticalSpace(context, height: 16),
              
              CustomButton(
                text: 'LOG IN',
                onPressed: state.status == AuthStatus.loading ? null : _onLogin,
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