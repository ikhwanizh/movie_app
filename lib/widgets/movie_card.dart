import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/theme.dart';
import 'package:movie_app/pages/detail_page.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;
  const MovieCard(this.movie);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailPage(),
            ),
          );
        },
        child: ClipRRect(
          child: Row(
            children: [
              //PHOTO
              Container(
                height: 120,
                width: 95,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Image.asset(
                  movie.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 24,
              ),
              //DESCRIPTION
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Title:',
                    style: whiteTextStyle.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    movie.title,
                    style: whiteTextStyle,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Release Date:',
                    style: whiteTextStyle.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    movie.realeaseDate,
                    style: whiteTextStyle,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Average Rating:',
                    style: whiteTextStyle.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    movie.rating.toString(),
                    style: whiteTextStyle,
                  ),
                ],
              ),
              //BUTTON
              const Spacer(),
              Column(
                children: [
                  IconButton(
                    color: greenColor,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.bookmark,
                    ),
                  ),
                  IconButton(
                    color: greenColor,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.star,
                    ),
                  ),
                  Text(
                    movie.rating.toString(),
                    style: whiteTextStyle.copyWith(
                      fontWeight: FontWeight.w500,
                      color: greenColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
