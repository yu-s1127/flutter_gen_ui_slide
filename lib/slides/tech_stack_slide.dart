import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:gap/gap.dart';

class TechStackSlide extends FlutterDeckSlideWidget {
  const TechStackSlide({super.key})
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/tech-stack',
          title: 'Tech Stack',
        ),
      );

  @override
  FlutterDeckSlide build(BuildContext context) {
    final textTheme = FlutterDeckTheme.of(context).textTheme;

    return FlutterDeckSlide.blank(
      builder: (_) => Padding(
        padding: const EdgeInsets.all(48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '技術構成',
              style: textTheme.title.copyWith(fontWeight: FontWeight.bold),
            ),
            Gap(32),
            Text('■ 必要なFlutterバージョン', style: textTheme.bodyMedium),
            Gap(16),
            Text('  → Flutter >= 3.35.7', style: textTheme.bodySmall),
            Text('  → Dart SDK >= 3.10.0', style: textTheme.bodySmall),
            Gap(32),
            Text('■ 主要パッケージ（本スライドで使用）', style: textTheme.bodyMedium),
            Gap(16),
            Text('  → genui: ^0.5.1', style: textTheme.bodySmall),
            Text(
              '  → genui_google_generative_ai: ^0.5.1',
              style: textTheme.bodySmall,
            ),
            Text('  → json_schema_builder: ^0.1.3', style: textTheme.bodySmall),
            Gap(32),
            Text('■ その他関連パッケージ', style: textTheme.bodyMedium),
            Gap(16),
            Text(
              '  → genui_firebase_ai: Firebase AI連携用',
              style: textTheme.bodySmall,
            ),
            Text('  → genui_a2ui: A2Aサーバー連携用', style: textTheme.bodySmall),
          ],
        ),
      ),
    );
  }
}
