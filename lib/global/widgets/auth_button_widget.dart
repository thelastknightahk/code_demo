import 'package:easiest_shop/global/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthButtonWidget extends StatelessWidget {
  Function()? onPress;
  String? contentText;
  AuthButtonWidget({Key? key, this.onPress, this.contentText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress!,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
        decoration: BoxDecoration(
            color: AppColor.primaryColor,
            borderRadius: BorderRadius.circular(4.0)),
        child: Text(
          contentText!,
          style: GoogleFonts.roboto(fontSize: 16, color: AppColor.whteColor),
        ),
      ),
    );
  }
}
