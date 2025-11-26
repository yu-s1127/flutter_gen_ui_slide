import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:gap/gap.dart';

class OfficiallyRecommendedSlide extends FlutterDeckSlideWidget {
  const OfficiallyRecommendedSlide({super.key})
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/officially-recommended-genui',
          title: '公式が推奨する生成UIフレームワーク',
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
            Text('Flutter公式が露骨に推し始める', style: textTheme.title),
            Gap(24),
            Expanded(child: Image.asset('assets/release-genui.png')),
            Gap(8),
            Text('https://x.com/FlutterDev', style: textTheme.bodySmall),
          ],
        ),
      ),
    );
  }
}
