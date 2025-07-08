import 'package:flutter/material.dart';
import 'package:mynotes/constants/routes.dart';
import 'package:mynotes/services/auth/auth_service.dart';

class VerifyEmailView extends StatefulWidget {
  const VerifyEmailView({super.key});

  @override
  State<VerifyEmailView> createState() => _VerifyEmailViewState();
}

class _VerifyEmailViewState extends State<VerifyEmailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('E-mail Verification'),),
      body: Column(children: [
        const Text("We've sent an email verification, please open it to verify"),
        Text("If you haven't recieved the mail, click here"),
        TextButton(onPressed:() async{
          await AuthService.firebase().sendEmailVerification();
        }, child: const Text('Send email verification')),
      TextButton(onPressed: () async{
        await AuthService.firebase().logout();
        Navigator.of(context,).pushNamedAndRemoveUntil(registerRoute, (route)=>false);
      }, 
      child: const Text('Restart') ),
      ],
      ),
    );
  }
}