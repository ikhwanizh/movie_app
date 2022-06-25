import 'package:flutter/material.dart';
import 'package:movie_app/theme.dart';

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
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Row(
                children: [
                  SizedBox(
                    height: 42,
                    width: 252,
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
                        hintText: 'Search Here ...',
                        // labelText: 'Search Here ...',
                        // labelStyle: whiteTextStyle.copyWith(
                        //   fontSize: 14,
                        // ),
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
          ],
        ),
      ),
    );
  }
}
