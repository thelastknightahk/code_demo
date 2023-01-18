import 'package:easiest_shop/global/colors/colors.dart';
import 'package:easiest_shop/global/presentation/widgets/text_input_widget.dart';
import 'package:easiest_shop/global/presentation/widgets/text_style_widget.dart';
import 'package:flutter/material.dart';

class PurchasePage extends StatelessWidget {
  const PurchasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          SizedBox(
            height: 15.0,
          ),
          TextInputWidget(
            password: false,
            textContent: 'Name',
          ),
          TextInputWidget(
            password: false,
            textContent: 'Category',
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                child: TextStyleWidget(
                  content: 'Quantity',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  textColor: AppColor.primaryColor,
                ),
              ),
              Container(
                width: 100,
                child: const Card(
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4.0),
                      child: TextField(
                          cursorColor: AppColor.primaryColor,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '10',
                            hintStyle: TextStyle(color: AppColor.primaryColor),
                          )),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                child: TextStyleWidget(
                  content: 'Unit Price',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  textColor: AppColor.primaryColor,
                ),
              ),
              Container(
                width: 100,
                child: const Card(
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4.0),
                      child: TextField(
                          cursorColor: AppColor.primaryColor,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '10',
                            hintStyle: TextStyle(color: AppColor.primaryColor),
                          )),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                child: TextStyleWidget(
                  content: 'Total Price',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  textColor: AppColor.primaryColor,
                ),
              ),
              Container(
                width: 100,
                child: Card(
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 4.0, vertical: 10.0),
                    child: TextStyleWidget(
                      content: '100 SGD',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      textColor: AppColor.primaryColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 100.0,
          ),
          TextButton(
            onPressed: () {},
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(AppColor.primaryColor),
            ),
            child: TextStyleWidget(
              content: 'Purchase',
              fontSize: 14,
              fontWeight: FontWeight.w400,
              textColor: AppColor.whteColor,
            ),
          )
        ],
      ),
    );
  }
}
