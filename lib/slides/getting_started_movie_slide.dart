import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:gap/gap.dart';

class GettingStartedMovieSlide extends FlutterDeckSlideWidget {
  const GettingStartedMovieSlide({super.key})
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/getting-started-movie',
          title: 'Flutter公式の入門動画',
        ),
      );

  @override
  FlutterDeckSlide build(BuildContext context) {
    final textTheme = FlutterDeckTheme.of(context).textTheme;

    return .blank(
      builder: (_) => Center(
        child: Column(
          mainAxisAlignment: .center,
          crossAxisAlignment: .center,
          mainAxisSize: .max,
          children: [
            Text('興味があれば公式のget startedを参照してください！', style: textTheme.title),
            Gap(24),
            Expanded(child: Image.asset('assets/getting_started_movie.png')),
            Gap(8),
            Text(
              'https://www.youtube.com/watch?v=nWr6eZKM6no&t=2s',
              style: textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
