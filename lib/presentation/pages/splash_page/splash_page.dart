import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_myshop_app/application/auth/auth_bloc.dart';
import 'package:flutter_myshop_app/presentation/routes/router.gr.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) =>
              AutoRouter.of(context).replace(NavigationPageRoute()),
          unauthenticated: (_) =>
              AutoRouter.of(context).replace(GetStartedPageRoute()),
        );
      },
      builder: (context, state) {
        if (state == AuthState.authenticated()) {
          AutoRouter.of(context).popAndPush(NavigationPageRoute());
        } else if (state == AuthState.unauthenticated()) {
          AutoRouter.of(context).popAndPush(GetStartedPageRoute());
        }
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
