import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:gap/gap.dart';

class CatalogItemSlide extends FlutterDeckSlideWidget {
  const CatalogItemSlide({super.key})
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/genui-catalog-item',
          title: 'CatalogItem',
        ),
      );

  @override
  FlutterDeckSlide build(BuildContext context) {
    final textTheme = FlutterDeckTheme.of(context).textTheme;
    return FlutterDeckSlide.split(
      theme: FlutterDeckThemeData.dark(),
      leftBuilder: (_) => Padding(
        padding: const EdgeInsets.all(48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'カタログアイテム',
              style: textTheme.title.copyWith(fontWeight: FontWeight.bold),
            ),
            Gap(32),
            Text(
              '■ CatalogItem: AIが生成可能なカスタムWidgetを定義',
              style: textTheme.bodyMedium,
            ),
            Gap(24),
            Text(
              '  → jsonスキーマを定義し、それに合わせたデータの返却およびデータの利用を可能とする',
              style: textTheme.bodySmall,
            ),
          ],
        ),
      ),
      rightBuilder: (_) => Column(
        children: [
          Text('サンプルコード', style: TextStyle(color: Colors.black)),
          Gap(8),
          Expanded(child: Image.asset('assets/catalog-item.png')),
        ],
      ),
    );
  }
}
