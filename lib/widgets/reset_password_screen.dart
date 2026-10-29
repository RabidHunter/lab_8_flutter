import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: Text(
                "Відновлення паролю",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 16.0),
            const Center(
              child: Text(
                "Введіть електронну пошту для скидання пароля:",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, color: Colors.black54),
              ),
            ),
            const SizedBox(height: 48.0),
            const TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Електронна пошта',
              ),
            ),
            const SizedBox(height: 24.0),

            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () => {
                        showDialog(
                          context: context,
                          builder: (BuildContext ctx) {
                            return const AlertDialog(
                              title: Text('Message'),
                              content: Text("Need to implement"),
                            );
                          },
                        )
                      },
                      child: const Text("Reset"),
                    ),
                  ),
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: SizedBox(
                    height: 48,
                    child: OutlinedButton(
                      onPressed: () => {
                        Navigator.pop(context)
                      },
                      child: const Text("Back"),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24.0),
          ],
        ),
      ),
    );
  }
}