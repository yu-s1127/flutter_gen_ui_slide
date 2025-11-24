import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:gap/gap.dart';

class GenuiInGeminiSlide extends FlutterDeckSlideWidget {
  const GenuiInGeminiSlide({super.key})
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/genui_in_gemini',
          title: 'Geminiによる生成UIの活用',
        ),
      );

  @override
  FlutterDeckSlide build(BuildContext context) {
    final textTheme = FlutterDeckTheme.of(context).textTheme;
    return FlutterDeckSlide.split(
      theme: FlutterDeckThemeData.dark().copyWith(
        splitSlideTheme: const FlutterDeckSplitSlideThemeData(
          leftBackgroundColor: Colors.black,
          leftColor: Colors.white,
          rightBackgroundColor: Colors.black,
          rightColor: Colors.white,
        ),
      ),

      headerBuilder: (_) => FlutterDeckHeader(title: 'Geminiによる生成UIの活用'),
      rightBuilder: (_) => Column(
        children: [
          Expanded(child: Image.asset('assets/build-flutter-in-gemini.png')),
          Gap(12),
          Text(
            'https://x.com/sethladd/status/1991015441817321759',
            style: textTheme.bodySmall,
          ),
        ],
      ),
      leftBuilder: (context) => Column(
        mainAxisAlignment: .center,
        crossAxisAlignment: .start,
        children: [
          Text(
            '■ Gemini 3のアップデートと同時にGemini内で生成UIの機能が実装',
            style: textTheme.bodyMedium,
          ),
          Gap(24),
          Text(
            '■ genuiパッケージを直接利用しているわけではないが、影響を受けた内部ライブラリセットを使っている',
            style: textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
