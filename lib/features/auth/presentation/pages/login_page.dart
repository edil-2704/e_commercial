import 'package:e_commercial/features/auth/presentation/pages/password_page.dart';
import 'package:e_commercial/features/auth/presentation/pages/register_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 120,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sign In',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            CommonTextFieldWidget(
              tittle: 'Enter email',
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const PasswordPage(),
                  ),
                );
              },
              child: Text('Continue'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).cardTheme.color,
                minimumSize: Size(MediaQuery.sizeOf(context).width, 35),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              alignment: Alignment.bottomCenter,
              height: 20,
              width: MediaQuery.of(context).size.width,
              child: RichText(
                text: TextSpan(
                  text: 'У вас еще нет аккаунта?  ',
                  style: const TextStyle(
                    color: Color(0xff5B6975),
                  ),
                  children: [
                    TextSpan(
                      text: 'create',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff43D049),
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const RegisterPage(),
                            ),
                          );
                        },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CommonTextFieldWidget extends StatelessWidget {
  final String tittle;
  const CommonTextFieldWidget({
    super.key,
    required this.tittle,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(4),
          ),
        ),
        hintText: tittle,
      ),
    );
  }
}
