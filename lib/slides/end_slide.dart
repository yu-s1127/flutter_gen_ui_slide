import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class EndSlide extends FlutterDeckSlideWidget {
  const EndSlide({super.key})
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/end',
          title: '終わり',
        ),
      );

  @override
  FlutterDeckSlide build(BuildContext context) {
    final textTheme = FlutterDeckTheme.of(context).textTheme;

    return FlutterDeckSlide.blank(
      builder: (_) => Center(
        child: Column(
          mainAxisAlignment: .center,
          crossAxisAlignment: .center,
          mainAxisSize: .max,
          children: [Text('ご清聴ありがとうございました', style: textTheme.title)],
        ),
      ),
    );
  }
}
