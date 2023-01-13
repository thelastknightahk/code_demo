import 'package:easiest_shop/global/colors/colors.dart';
import 'package:easiest_shop/global/widgets/auth_button_widget.dart';
import 'package:easiest_shop/global/widgets/text_input_widget.dart';
import 'package:easiest_shop/presentation/pages/auth/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.whteColor,
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 10.0),
                    child: Text(
                      'Sign up',
                      style: GoogleFonts.roboto(
                          fontSize: 20,
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Center(
                      child:
                          Image.asset('assets/images/easiest_logo_circle.png')),
                  const SizedBox(
                    height: 40.0,
                  ),
                  TextInputWidget(
                    password: false,
                    foreIcon: const Icon(
                      Icons.person,
                      color: AppColor.primaryColor,
                    ),
                    textContent: 'Name',
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextInputWidget(
                    password: false,
                    foreIcon: const Icon(
                      Icons.mail,
                      color: AppColor.primaryColor,
                    ),
                    textContent: 'Email',
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextInputWidget(
                    password: true,
                    foreIcon: const Icon(
                      Icons.lock,
                      color: AppColor.primaryColor,
                    ),
                    textContent: 'Password',
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextInputWidget(
                    password: true,
                    foreIcon: const Icon(
                      Icons.lock,
                      color: AppColor.primaryColor,
                    ),
                    textContent: 'Confirm Password',
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  Center(
                    child: AuthButtonWidget(
                      contentText: 'Sign up',
                      onPress: () {},
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Center(
                    child: InkWell(
                      onTap: () {
                        Get.off(
                          const LoginPage(),
                        );
                      },
                      child: Text(
                        'Already have an account? Sign in',
                        style: GoogleFonts.roboto(
                            fontSize: 15.0, color: AppColor.primaryColor),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
