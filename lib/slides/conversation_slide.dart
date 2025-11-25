import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:gap/gap.dart';

class ConversationSlide extends FlutterDeckSlideWidget {
  const ConversationSlide({super.key})
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/genui-conversation',
          title: 'GenUIConversation',
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
              '対話用インスタンスの作成',
              style: textTheme.title.copyWith(fontWeight: .bold),
            ),
            Gap(32),
            Text(
              '■ GoogleGenerativeAiContentGenerator: ',
              style: textTheme.bodyMedium,
            ),
            Gap(24),
            Text('  → Gemini接続用のインスタンス', style: textTheme.bodySmall),
            Gap(8),
            Text('  → システムインストラクションを設定可能', style: textTheme.bodySmall),
            Gap(8),
            Text(
              '  → 割愛しますが、Firebase用のクラスや、カスタマイズ次第で他のLLMを利用可能（構造体を返せることが条件）',
              style: textTheme.bodySmall,
            ),
            Gap(32),
            Text('■ GenUiConversation', style: textTheme.bodyMedium),
            Gap(24),
            Text('  → AIとのやりとりなどの実装を抽象化しているクラス', style: textTheme.bodySmall),
            Gap(24),

            Text('■ SerfaceId', style: textTheme.bodyMedium),
            Gap(24),
            Text(
              '  → 会話とUI領域の紐付け（1つの会話から複数のUIを管理）',
              style: textTheme.bodySmall,
            ),
          ],
        ),
      ),
      rightBuilder: (_) => Column(
        children: [
          Text('サンプルコード', style: TextStyle(color: Colors.black)),
          Gap(8),
          Expanded(child: Image.asset('assets/genui-conversation.png')),
          Gap(4),
          Image.asset('assets/surface-management.png', height: 200),
        ],
      ),
    );
  }
}
