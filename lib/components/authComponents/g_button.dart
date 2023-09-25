import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../service/flutter_auth_service.dart';


class GoogleSignInButton extends StatelessWidget {
  const GoogleSignInButton({super.key});

  

  @override
  Widget build(BuildContext context) {
    return 

    ElevatedButton(
              onPressed: () {
        context.read<FirebaseAuthService>().signInWithGoogle();
      },
              child: const Text(
                'Sign-in With Google',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            );

      
      
  }
}

