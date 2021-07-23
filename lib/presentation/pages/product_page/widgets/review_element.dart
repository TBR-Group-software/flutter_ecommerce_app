import 'package:flutter/material.dart';
import 'package:flutter_myshop_app/presentation/styles/colors.dart';
import 'package:flutter_myshop_app/presentation/styles/text_styles.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class ReviewElement extends StatelessWidget {
  final String reviewerName;
  final DateTime reviewDate;
  final String reviewText;
  final int helpfulScore;

  const ReviewElement({
    required this.reviewerName,
    required this.reviewDate,
    required this.reviewText,
    required this.helpfulScore,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          reviewerName,
          style: myshopTextStyles.dark14SemiBold600,
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                SvgPicture.asset(
                  'assets/icons_svg/star_icon.svg',
                  color: myshopColors.orange,
                  width: 12,
                  height: 12,
                ),
                SvgPicture.asset(
                  'assets/icons_svg/star_icon.svg',
                  color: myshopColors.orange,
                  width: 12,
                  height: 12,
                ),
                SvgPicture.asset(
                  'assets/icons_svg/star_icon.svg',
                  color: myshopColors.orange,
                  width: 12,
                  height: 12,
                ),
                SvgPicture.asset(
                  'assets/icons_svg/star_icon.svg',
                  color: myshopColors.orange,
                  width: 12,
                  height: 12,
                ),
                SvgPicture.asset(
                  'assets/icons_svg/star_icon.svg',
                  color: myshopColors.orange,
                  width: 12,
                  height: 12,
                ),
              ],
            ),
            Text(
              DateFormat('MMMM, yyyy').format(reviewDate),
              style: myshopTextStyles.darkGray12Regular400,
            ),
          ],
        ),
        const SizedBox(height: 16),
        Text(
          reviewText,
          style: myshopTextStyles.darkGray14Regular400,
        ),
        const SizedBox(height: 14),
        Text(
          '$helpfulScore people found this helpful',
          style: myshopTextStyles.gray11Regular400,
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Text(
              'Comment',
              style: myshopTextStyles.dark14Regular400Underline,
            ),
            Row(
              children: <Widget>[
                const Text(
                  'Helpful',
                  style: myshopTextStyles.gray12Regular400,
                ),
                const SizedBox(width: 9),
                SvgPicture.asset(
                  'assets/icons_svg/thumb_up_icon.svg',
                  color: myshopColors.gray,
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
