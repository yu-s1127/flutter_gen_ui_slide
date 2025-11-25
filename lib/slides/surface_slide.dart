import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:gap/gap.dart';

class SurfaceSlide extends FlutterDeckSlideWidget {
  const SurfaceSlide({super.key})
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/genui-surface',
          title: 'Surface',
        ),
      );

  @override
  FlutterDeckSlide build(BuildContext context) {
    final textTheme = FlutterDeckTheme.of(context).textTheme;
    return .split(
      theme: .dark(),
      leftBuilder: (_) => Padding(
        padding: const .all(48),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Text(
              '会話データからUIを構築',
              style: textTheme.title.copyWith(fontWeight: .bold),
            ),
            Gap(32),
            Text(
              '■ GenUiSurface: AIが生成可能なカスタムWidgetを定義',
              style: textTheme.bodyMedium,
            ),
            Gap(24),
            Text('  → conversationを渡してUIを構築', style: textTheme.bodySmall),
            Gap(8),
            Text(
              '  → catalogItemsで定義したWidgetを自動的にレンダリング',
              style: textTheme.bodySmall,
            ),
            Gap(8),
            Text('  → ストリーミング対応', style: textTheme.bodySmall),
          ],
        ),
      ),
      rightBuilder: (_) => Column(
        children: [
          Text('サンプルコード', style: TextStyle(color: Colors.black)),
          Gap(8),
          Expanded(child: Image.asset('assets/surface-ui.png')),
        ],
      ),
    );
  }
}
