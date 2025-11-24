import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:gap/gap.dart';

class WhatIsGenuiSlide extends FlutterDeckSlideWidget {
  const WhatIsGenuiSlide({super.key})
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/what-is-genui',
          title: 'flutter_genuiとは何か',
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
      rightBuilder: (_) => Column(
        mainAxisAlignment: .spaceBetween,
        crossAxisAlignment: .center,
        children: [
          Image.asset('assets/genui-readme.png'),
          Text('https://github.com/flutter/genui', style: textTheme.bodySmall),
        ],
      ),
      leftBuilder: (_) => Padding(
        padding: .all(20),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Text(
              'flutter_genuiとは？',
              style: textTheme.title.copyWith(fontWeight: .bold),
            ),
            Gap(12),
            Text('■ 生成UIを簡単に利用するためのパッケージ', style: textTheme.bodySmall),
            Text('■ Flutter 3.38（2025/11/12）と同時に公開', style: textTheme.bodySmall),

            Gap(24),

            Text(
              'Flutter GenUIの役割',
              style: textTheme.bodyMedium.copyWith(fontWeight: .bold),
            ),
            Gap(12),
            Text(
              '■ TextベースだったLLMの返答をグラフィカルなUIに置き換える',
              style: textTheme.bodySmall,
            ),
            Text(' →「テキストの壁」を打ち破ること', style: textTheme.bodySmall),
            Text('■ それを開発者として使いやすいものとして提供すること', style: textTheme.bodySmall),

            Gap(42),
            Text(
              '主なユースケース',
              style: textTheme.bodyMedium.copyWith(fontWeight: .bold),
            ),
            Gap(12),
            Text('■ チャットボットに対するグラフィカルUIの組み込み', style: textTheme.bodySmall),
            Text('■ ユーザー個々人ごとに動的に生成されるUIを作る', style: textTheme.bodySmall),
            Text(' → エージェントのUXの向上', style: textTheme.bodySmall),
          ],
        ),
      ),
    );
  }
}
