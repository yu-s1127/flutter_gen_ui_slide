import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:gap/gap.dart';

class ReferencesSlide extends FlutterDeckSlideWidget {
  const ReferencesSlide({super.key})
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/references',
          title: '参考文献',
        ),
      );

  @override
  FlutterDeckSlide build(BuildContext context) {
    final textTheme = FlutterDeckTheme.of(context).textTheme;

    return .blank(
      builder: (_) => Padding(
        padding: const .all(48),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Text('参考文献', style: textTheme.title.copyWith(fontWeight: .bold)),
            Gap(32),
            Text('■ flutter/genui - GitHub', style: textTheme.bodySmall),
            Text(
              '  https://github.com/flutter/genui',
              style: textTheme.bodySmall.copyWith(color: Colors.blue),
            ),
            Gap(16),
            Text(
              '■ GenUI SDK for Flutter - Flutter公式ドキュメント',
              style: textTheme.bodySmall,
            ),
            Text(
              '  https://docs.flutter.dev/ai/genui',
              style: textTheme.bodySmall.copyWith(color: Colors.blue),
            ),
            Gap(16),
            Text(
              '■ Rich and dynamic user interfaces with Flutter and generative UI - Flutter Blog',
              style: textTheme.bodySmall,
            ),
            Text(
              '  https://blog.flutter.dev/rich-and-dynamic-user-interfaces-with-flutter-and-generative-ui',
              style: textTheme.bodySmall.copyWith(color: Colors.blue),
            ),
            Gap(16),
            Text(
              '■ Announcing Flutter 3.38 & Dart 3.10 - Flutter Blog',
              style: textTheme.bodySmall,
            ),
            Text(
              '  https://blog.flutter.dev/announcing-flutter-3-38-dart-3-10',
              style: textTheme.bodySmall.copyWith(color: Colors.blue),
            ),
            Gap(16),
            Text(
              '■ Get started with the GenUI SDK - Flutter公式ドキュメント',
              style: textTheme.bodySmall,
            ),
            Text(
              '  https://docs.flutter.dev/ai/genui/get-started',
              style: textTheme.bodySmall.copyWith(color: Colors.blue),
            ),
            Gap(16),
            Text('■ genui - pub.dev', style: textTheme.bodySmall),
            Text(
              '  https://pub.dev/packages/genui',
              style: textTheme.bodySmall.copyWith(color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
