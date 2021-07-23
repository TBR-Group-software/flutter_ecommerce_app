import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_myshop_app/application/auth/auth_form/auth_form_bloc.dart';
import 'package:flutter_myshop_app/presentation/routes/router.gr.dart';
import 'package:flutter_myshop_app/presentation/styles/gradients.dart';
import 'package:flutter_myshop_app/presentation/styles/input_decorations.dart';
import 'package:flutter_myshop_app/presentation/styles/strings.dart';
import 'package:flutter_myshop_app/presentation/styles/text_styles.dart';
import 'package:flutter_sim_country_code/flutter_sim_country_code.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class EnterPhonePage extends StatefulWidget {
  @override
  _EnterPhonePageState createState() => _EnterPhonePageState();
}

class _EnterPhonePageState extends State<EnterPhonePage> {
  String? phoneNumber;
  String? countryCode;

  @override
  void initState() {
    setCountryCodeFromSim().whenComplete(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void didChangeDependencies() async {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final MediaQueryData _mediaQuery = MediaQuery.of(context);
    final double _height = _mediaQuery.size.height;
    final double _width = _mediaQuery.size.width;
    return Scaffold(
      body: BlocListener<AuthFormBloc, AuthFormState>(
        listener: (BuildContext context, AuthFormState state) {
          if (state.isWaitingforCode) {
            AutoRouter.of(context).navigate(VerificationPageRoute());
          } else if (state.errorMessage.isNotEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.errorMessage),
              ),
            );
          }
        },
        child: Column(
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
                  myshopStrings.whatIsYourPhoneNumber,
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
                  SizedBox(
                    height: _height * 0.040,
                  ),
                  const Text(myshopStrings.pleaseEnterYourPhoneNumber,
                      style: myshopTextStyles.darkGray17Regular400),
                  InternationalPhoneNumberInput(
                    initialValue: PhoneNumber(isoCode: countryCode),
                    onInputChanged: (PhoneNumber value) {
                      phoneNumber = value.phoneNumber;
                      countryCode = value.isoCode;
                    },
                    selectorTextStyle: myshopTextStyles.darkGray19Regular400,
                    inputDecoration: myshopInputDecorations.phone,
                    textStyle: myshopTextStyles.darkGray19Regular400,
                    selectorConfig: const SelectorConfig(
                      setSelectorButtonAsPrefixIcon: true,
                    ),
                    keyboardType: TextInputType.number,
                    autoFocus: true,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(
                        _width * 0.872,
                        _height * 0.078,
                      ),
                    ),
                    onPressed: () {
                      final AuthFormBloc authFormBloc =
                          context.read<AuthFormBloc>();
                      authFormBloc
                          .add(AuthFormEvent.verifyPhoneNumber(phoneNumber!));
                    },
                    child: const Text(myshopStrings.sendVerificationCode),
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
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> setCountryCodeFromSim() async {
    try {
      countryCode = await FlutterSimCountryCode.simCountryCode;
    } catch (e) {}
    return;
  }
}
