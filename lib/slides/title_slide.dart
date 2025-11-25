import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class TitleSlide extends FlutterDeckSlideWidget {
  const TitleSlide({super.key})
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/title',
          title: 'Title',
        ),
      );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return .blank(
      builder: (_) => Padding(
        padding: .symmetric(horizontal: 8),
        child: Column(
          mainAxisAlignment: .center,
          crossAxisAlignment: .start,
          children: [
            Text(
              'flutter_genuiを使った生成的UIアプリケーション',
              style: FlutterDeckTheme.of(context).textTheme.display.copyWith(
                fontSize: 55,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24),
            FlutterDeckSpeakerInfoWidget(
              speakerInfo: FlutterDeckSpeakerInfo(
                name: 'Yuhei Suzuki',
                description: 'Flutterエンジニア',
                socialHandle: '@yu_s1127',
                imagePath: 'icon.jpeg',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
