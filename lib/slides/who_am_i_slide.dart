import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:gap/gap.dart';

class WhoAmISlide extends FlutterDeckSlideWidget {
  const WhoAmISlide({super.key})
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/who-am-i',
          title: '自己紹介',
        ),
      );

  @override
  FlutterDeckSlide build(BuildContext context) {
    final textTheme = FlutterDeckTheme.of(context).textTheme;
    return FlutterDeckSlide.template(
      headerBuilder: (_) => FlutterDeckHeader(title: '自己紹介'),
      contentBuilder: (_) => Padding(
        padding: .all(24),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Gap(16),
            Row(
              children: [
                Image.asset('assets/icon.jpeg', height: 200, width: 200),
                Gap(72),
                Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text('ゆう（Yuhei Suzuki）', style: textTheme.bodyMedium),
                    Text('X: @yu_s1127', style: textTheme.bodyMedium),
                  ],
                ),
              ],
            ),
            Gap(48),
            Text('Flutter歴 3.5年 (2022年4月〜)', style: textTheme.bodyMedium),
            Gap(12),
            Text('FlutterKaigiスタッフ（2025年）', style: textTheme.bodyMedium),
            Gap(12),
            Text(
              'その他経験技術: SQL(Postgre, Oracle, SQLServer), Java(Spring), React, Vue',
              style: textTheme.bodyMedium,
            ),
            Gap(12),
          ],
        ),
      ),
    );
  }
}
