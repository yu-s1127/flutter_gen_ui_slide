import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:gap/gap.dart';

class StructureGenuiSlide extends FlutterDeckSlideWidget {
  const StructureGenuiSlide({super.key})
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/structure-genui',
          title: 'genuiの仕組み',
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
          children: [
            Text('flutter_genuiの仕組み', style: textTheme.title),
            Gap(12),
            Text(
              '1. CatalogItem定義 → 2. Conversation作成 → 3. Surface表示',
              style: textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
