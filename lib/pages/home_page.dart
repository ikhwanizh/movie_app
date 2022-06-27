import 'package:flutter/material.dart';
import 'package:movie_app/models/categories.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/theme.dart';
import 'package:movie_app/widgets/categories_card.dart';
import 'package:movie_app/widgets/movie_card.dart';

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
            MovieCard(
              Movie(
                id: 1,
                imageUrl: 'assets/endgame.png',
                rating: 9.2,
                realeaseDate: '2018-08-03',
                title: 'Avenger End Game',
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            MovieCard(
              Movie(
                id: 2,
                imageUrl: 'assets/spiderman_nowayhome.png',
                rating: 9.5,
                realeaseDate: '2021-12-17',
                title: 'Spiderman No Way Home',
              ),
            ),
            const SizedBox(
              height: 120,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Load More',
                    style: whiteTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: greenColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Watch List',
                          style: blackTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        const Icon(
                          Icons.bookmark,
                          color: blackColor,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
