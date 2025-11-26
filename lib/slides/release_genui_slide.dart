import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:gap/gap.dart';

class ReleaseGenuiSlide extends FlutterDeckSlideWidget {
  const ReleaseGenuiSlide({super.key})
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/release-genui',
          title: 'flutter_genuiの発表',
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
            Text('Flutter 3.38.0リリースに合わせて発表', style: textTheme.title),
            Gap(24),
            Expanded(child: Image.asset('assets/release-genui.png')),
            Gap(8),
            Text(
              'https://x.com/FlutterDev/status/1988694305347891265',
              style: textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
