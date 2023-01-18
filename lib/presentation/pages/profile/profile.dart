import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:easiest_shop/global/colors/colors.dart';
import 'package:easiest_shop/global/presentation/widgets/circle_image_widget.dart';
import 'package:easiest_shop/global/presentation/widgets/profile_bar_item_widget.dart';
import 'package:easiest_shop/global/presentation/widgets/text_style_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 30.0,
        ),
        Center(
            child: circleImageWidget(
                context,
                'https://idigitalcitizen.files.wordpress.com/2011/06/2560x1920-transformers-3-optimus-prime-fight.jpg',
                80,
                80,
                40)),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Center(
            child: TextStyleWidget(
              content: 'Aung Htet Kyaw',
              fontSize: 18,
              fontWeight: FontWeight.w600,
              textColor: AppColor.primaryColor,
            ),
          ),
        ),
        Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10.0),
            child: profileBarWidgetItem(context, 'Voucher', Icons.receipt)),
        Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10.0),
            child: profileBarWidgetItem(context, 'Reports', Icons.pie_chart)),
        Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10.0),
            child: profileBarWidgetItem(
                context, 'Notifications', Icons.notifications)),
        InkWell(
          onTap: () {
            log('Clicked Logout');
          },
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextStyleWidget(
              content: 'Logout',
              fontSize: 18,
              fontWeight: FontWeight.w400,
              textColor: AppColor.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
