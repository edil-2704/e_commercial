import 'package:e_commercial/features/auth/presentation/pages/password_page.dart';
import 'package:e_commercial/features/main_page/presentation/pages/main_page.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const CommonTextFieldWidget(
              tittle: 'Enter name',
            ),
            const SizedBox(height: 20),
            const CommonTextFieldWidget(
              tittle: 'Enter surname',
            ),
            const SizedBox(height: 20),
            const CommonTextFieldWidget(
              tittle: 'Enter email',
            ),
            const SizedBox(height: 20),
            const CommonTextFieldWidget(
              tittle: 'Enter password',
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const MainPage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).cardTheme.color,
                minimumSize: Size(MediaQuery.sizeOf(context).width, 35),
              ),
              child: const Text('Continue'),
            ),
          ],
        ),
      ),
    );
  }
}
