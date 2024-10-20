import 'package:e_commercial/features/login/presentation/pages/register_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class PasswordPage extends StatelessWidget {
  const PasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        leading: const BackButton(),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 30,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Password',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            CommonTextFieldWidget(
              tittle: 'Enter password',
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
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
                  text: 'Забыли пароль?  ',
                  style: const TextStyle(
                    color: Color(0xff5B6975),
                  ),
                  children: [
                    TextSpan(
                      text: 'Восстановить',
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
