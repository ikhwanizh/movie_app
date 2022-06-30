import 'package:flutter/material.dart';
import 'package:movie_app/models/categories.dart';
import 'package:movie_app/theme.dart';
import 'package:movie_app/widgets/categories_card.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: blackColor,
        body: SafeArea(
          child: Stack(
            children: [
              //DISPLAY
              Image.asset(
                'assets/big_spiderman.png',
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
                height: 245,
              ),
              //CONTENT
              ListView(
                children: [
                  const SizedBox(
                    height: 245,
                  ),
                  //TITLE
                  Padding(
                    padding: const EdgeInsets.only(left: 160, top: 12),
                    child: Text(
                      'Spiderman No Way \nHome',
                      style: whiteTextStyle.copyWith(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //CATEGORIES
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
                            nameCategories: 'Top Rated',
                            id: 1,
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
                  //ABOUT MOVIE
                  TabBar(
                    tabs: <Widget>[
                      Tab(
                        child: Text(
                          'About',
                          style: whiteTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Cast',
                          style: whiteTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              //IMAGE TITLE
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 170),
                child: Image.asset(
                  'assets/spiderman_nowayhome.png',
                  width: 120,
                  height: 145,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
