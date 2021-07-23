import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_myshop_app/application/auth/auth_form/auth_form_bloc.dart';
import 'package:flutter_myshop_app/presentation/routes/router.gr.dart';
import 'package:flutter_myshop_app/presentation/styles/gradients.dart';
import 'package:flutter_myshop_app/presentation/styles/strings.dart';
import 'package:flutter_myshop_app/presentation/styles/text_styles.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MediaQueryData _mediaQuery = MediaQuery.of(context);
    final double _height = _mediaQuery.size.height;
    final double _width = _mediaQuery.size.width;
    return Scaffold(
      body: BlocListener<AuthFormBloc, AuthFormState>(
        listener: (BuildContext context, AuthFormState state) {
          if (state.isCompleted) {
            AutoRouter.of(context).navigate(NavigationPageRoute());
          }
        },
        child: BlocBuilder<AuthFormBloc, AuthFormState>(
          builder: (BuildContext context, AuthFormState state) {
            if (state.isWaitingforCode) {
              return Column(
                children: <Widget>[
                  Container(
                    height: _height * 0.242,
                    width: _width,
                    decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      gradient: myshopGradients.purpleGradient,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(300),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: _height * 0.112,
                        left: _width * 0.064,
                        right: _width * 0.104,
                      ),
                      child: const Text(
                        myshopStrings.verificationCode,
                        style: myshopTextStyles.white25Bold700,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: _height * 0.399,
                    width: _width * 0.872,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            SizedBox(height: _height * 0.040),
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                myshopStrings.pleaseEnterCodeSentTo,
                                style: myshopTextStyles.darkGray17Regular400,
                              ),
                            ),
                            SizedBox(height: _height * 0.01),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                BlocBuilder<AuthFormBloc, AuthFormState>(
                                  builder: (BuildContext context,
                                      AuthFormState state) {
                                    if (state.isWaitingforCode) {
                                      return Text(
                                        state.phoneNumber,
                                        style: myshopTextStyles.dark17Bold700,
                                      );
                                    } else {
                                      return const Text('');
                                    }
                                  },
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text(
                                    myshopStrings.changePhoneNumber,
                                    style: myshopTextStyles
                                        .dark12Regular400Underline,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        PinCodeTextField(
                          onChanged: (String codeStr) => context
                              .read<AuthFormBloc>()
                              .add(AuthFormEvent.verificationCodeChanged(
                                  codeStr)),
                          onCompleted: (_) {
                            BlocProvider.of<AuthFormBloc>(context)
                                .add(AuthFormEvent.signInWithPhone());
                          },
                          appContext: context,
                          length: 6,
                          keyboardType: TextInputType.number,
                          autoFocus: true,
                          showCursor: false,
                          textStyle: myshopTextStyles.darkGray25Bold700,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(
                              _width * 0.872,
                              _height * 0.078,
                            ),
                          ),
                          onPressed: () {
                            BlocProvider.of<AuthFormBloc>(context)
                                .add(AuthFormEvent.signInWithPhone());
                          },
                          child: const Text(myshopStrings.submit),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            minimumSize: Size(
                              _width * 0.872,
                              0,
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            myshopStrings.skip,
                            style: myshopTextStyles.gray17Bold700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            } else {
              return const Center(child: CircularProgressIndicator.adaptive());
            }
          },
        ),
      ),
    );
  }
}
