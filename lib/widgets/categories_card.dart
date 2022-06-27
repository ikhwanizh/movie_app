import 'package:flutter/material.dart';
import 'package:movie_app/models/categories.dart';
import 'package:movie_app/theme.dart';

class CategoriesCard extends StatelessWidget {
  final Categories categories;
  const CategoriesCard(this.categories);

  @override
  Widget build(BuildContext context) {
    return categories.isActive
        ? Container(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: greenColor,
            ),
            child: Center(
              child: Text(
                categories.nameCategories,
                style: blackTextStyle.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          )
        : Container(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: secondaryBlackColor,
            ),
            child: Center(
              child: Text(
                categories.nameCategories,
                style: whiteTextStyle.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          );
  }
}
