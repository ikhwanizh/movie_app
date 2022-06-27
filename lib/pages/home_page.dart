import 'package:flutter/material.dart';
import 'package:movie_app/models/categories.dart';
import 'package:movie_app/theme.dart';
import 'package:movie_app/widgets/categories_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(
              height: 50,
            ),
            //NOTE: TITLE
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                'Movie App',
                style: whiteTextStyle.copyWith(
                  fontSize: 36,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                'Find your movie',
                style: whiteTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            //NOTE: SEARCH
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 42,
                    width: 312,
                    child: TextField(
                      style: whiteTextStyle.copyWith(
                        fontSize: 14,
                      ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        filled: true,
                        fillColor: secondaryBlackColor,
                        labelText: 'Search Here ...',
                        labelStyle: whiteTextStyle.copyWith(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 42,
                    width: 42,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: secondaryBlackColor,
                    ),
                    child: const Icon(
                      Icons.search,
                      color: whiteColor,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            //NOTE: CATEGORIES
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                'Categories',
                style: whiteTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            SizedBox(
              height: 32,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(
                    width: 24,
                  ),
                  CategoriesCard(
                    Categories(
                      id: 1,
                      nameCategories: 'Top Rated',
                      isActive: true,
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  CategoriesCard(
                    Categories(
                      id: 2,
                      nameCategories: 'Popular',
                      isActive: false,
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  CategoriesCard(
                    Categories(
                      id: 3,
                      nameCategories: 'Action',
                      isActive: false,
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  CategoriesCard(
                    Categories(
                      id: 4,
                      nameCategories: 'Adventure',
                      isActive: false,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            //NOTE: MOVIES
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: ClipRRect(
                child: Row(
                  children: [
                    Container(
                      height: 120,
                      width: 95,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Image.asset(
                        'assets/endgame.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
