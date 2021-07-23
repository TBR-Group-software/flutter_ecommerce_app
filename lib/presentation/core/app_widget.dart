import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_myshop_app/application/auth/auth_bloc.dart';
import 'package:flutter_myshop_app/application/auth/auth_form/auth_form_bloc.dart';

import '../../injection.dart';
import '/application/cart/cart_cubit.dart';
import '/application/navigation/navigation_cubit.dart';
import '/presentation/routes/router.gr.dart';
import '/presentation/styles/colors.dart';
import '/presentation/styles/strings.dart';
import '/presentation/styles/text_styles.dart';

class AppWidget extends StatelessWidget {
  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: <BlocProvider>[
        BlocProvider<AuthBloc>(
          create: (BuildContext context) =>
              getIt<AuthBloc>()..add(AuthEvent.authCheckRequested()),
        ),
        BlocProvider<AuthFormBloc>(
          create: (BuildContext context) => getIt<AuthFormBloc>(),
        ),
        BlocProvider<CartCubit>(
          create: (BuildContext context) => CartCubit(),
        ),
        BlocProvider<NavigationCubit>(
          create: (BuildContext context) => NavigationCubit(),
        ),
      ],
      child: MaterialApp.router(
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        title: myshopStrings.myshop,
        theme: ThemeData(
          sliderTheme: const SliderThemeData(
            minThumbSeparation: 1,
            activeTrackColor: myshopColors.yellow,
            inactiveTrackColor: myshopColors.lightGray,
            thumbColor: myshopColors.white,
            rangeThumbShape: RoundRangeSliderThumbShape(enabledThumbRadius: 12),
            overlayColor: myshopColors.opaque,
          ),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(),
          accentColor: myshopColors.yellow,
          splashColor: myshopColors.yellow,
          chipTheme: const ChipThemeData(
            labelStyle: myshopTextStyles.darkGray13Medium500,
            secondaryLabelStyle: myshopTextStyles.white13Medium500,
            disabledColor: Colors.black,
            brightness: Brightness.light,
            selectedColor: myshopColors.yellow,
            padding: EdgeInsets.symmetric(horizontal: 6),
            backgroundColor: myshopColors.white,
            secondarySelectedColor: myshopColors.yellow,
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              primary: myshopColors.yellow,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              textStyle: myshopTextStyles.white17Bold700,
            ),
          ),
          textTheme: Typography.englishLike2018,
        ),
        // home: FirebaseAuth.instance.currentUser == null
        //     ? GetStartedPage()
        //     : NavigationPage(),
      ),
    );
  }
}
