import 'package:flutter/material.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({
    super.key,
    required this.onPress,
  });

  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.error_outline,
              color: Colors.red,
              size: 128,
            ),
            const SizedBox(
              height: 24,
            ),
            const Text(
              'Network error detected, please, press the refresh button to try again.',
              style: TextStyle(color: Colors.black54, fontSize: 20),
            ),
            Expanded(child: Container()),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: onPress,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade600,
                ),
                child: const Text(
                  'Refresh',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
