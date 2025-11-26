import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class WhatIsGenuiTitleSlide extends FlutterDeckSlideWidget {
  const WhatIsGenuiTitleSlide({super.key})
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/what-is-genui-title',
          title: 'genuiとは？',
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
          children: [Text('flutter_genuiとはなにか', style: textTheme.title)],
        ),
      ),
    );
  }
}
