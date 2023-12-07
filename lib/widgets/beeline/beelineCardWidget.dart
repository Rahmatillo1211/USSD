// ignore_for_file: file_names

import 'package:flutter/material.dart';

class BeelineCardWidget extends StatelessWidget {
  final Color cardColor2;
  final String ? companyImage;
  const BeelineCardWidget({
    super.key,
    required this.cardColor2,
    required this.companyImage,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            Container(
              height: 121,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage(companyImage??'images/img/ucellCardback.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      '30 GB',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'OktaNeue-SemiBold',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      '30 kun',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'OktaNeue-Normal',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: Container(
            width: 89,
            height: 27,
            decoration: BoxDecoration(
              color: cardColor2,
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Center(
              child: Text(
                '50 000 so’m',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'OktaNeue-Medium',
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
