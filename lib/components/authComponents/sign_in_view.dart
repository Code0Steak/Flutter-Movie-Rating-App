import 'package:flutter/material.dart';
import 'package:movies_app/components/authComponents/g_button.dart';
import 'package:provider/provider.dart';


import 'sign_in_view_model.dart';



class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<SignInViewModel>(
      create: (_) => SignInViewModel(context.read),
      builder: (_, child) {
        return const Scaffold(
          body: SignInViewBody(),
        );
      },
    );
  }
}

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final isLoading =
        context.select((SignInViewModel viewModel) => viewModel.isLoading);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text("Please sign in"),
          ),
           isLoading ? _loadingIndicator() : const GoogleSignInButton(),
          
        ],
      ),
    );
  }

  Center _loadingIndicator() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

}