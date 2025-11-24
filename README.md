# Flutter GenUI プレゼンテーション

Flutter GenUIについての10分LT用スライドです。flutter_deckを使用して作成されています。

## 概要

このプロジェクトは、Flutter公式の**GenUI**パッケージについて紹介する10分間のライトニングトーク用のプレゼンテーションです。

### GenUIとは？

GenUI（Generative User Interface）は、AIが動的にUIを生成するFlutterパッケージです。従来の静的なUI開発とは異なり、AIがリアルタイムでユーザーに合わせたUIを構築します。

## スライド構成

1. **タイトルスライド** - Flutter GenUIの紹介
2. **GenUIとは？** - コンセプトと特徴
3. **なぜGenUIが必要か** - 従来のUI開発との比較
4. **アーキテクチャ** - 主要コンポーネントの説明
5. **使い方** - セットアップと基本的な使用方法
6. **デモ** - 実際に動くGenUIのデモ（シミュレーション）
7. **ユースケース** - 実用的な活用例
8. **まとめ** - メリット・デメリット

## 使い方

### インストール

```bash
flutter pub get
```

### 実行

利用可能なデバイスを確認：
```bash
flutter devices
```

Chrome（Web）で実行（推奨）：
```bash
flutter run -d chrome
```

macOS デスクトップで実行：
```bash
flutter run -d macos
```

iOSシミュレータで実行：
```bash
flutter run -d <デバイスID>
```

### プレゼンテーションの操作方法

- **次のスライド**: 右矢印キー、スペースキー、またはスワイプ
- **前のスライド**: 左矢印キー、またはスワイプ
- **特定のスライドへ移動**: スライド番号をクリック
- **フルスクリーン**: F11キー（ブラウザ）

## プロジェクト構造

```
lib/
├── main.dart                    # メインエントリーポイント
├── slides/                      # 各スライドファイル
│   ├── title_slide.dart
│   ├── what_is_genui_slide.dart
│   ├── why_genui_slide.dart
│   ├── architecture_slide.dart
│   ├── how_to_use_slide.dart
│   ├── demo_slide.dart
│   ├── use_cases_slide.dart
│   └── summary_slide.dart
└── widgets/                     # カスタムウィジェット
    └── genui_demo_widget.dart   # GenUIデモ
```

## 技術スタック

- **Flutter**: UI フレームワーク
- **flutter_deck**: プレゼンテーション用パッケージ
- **GenUI**: AIによる動的UI生成（デモで紹介）

## GenUIについて詳しく

- 公式パッケージ: [pub.dev/packages/genui](https://pub.dev/packages/genui)
- GitHubリポジトリ: [github.com/flutter/genui](https://github.com/flutter/genui)
- Publisher: labs.flutter.dev

## デモについて

このプロジェクトのデモスライドには、GenUIの動作をシミュレートした静的なデモが含まれています。実際のGenUIを使用する場合は、Firebase AI等のContentGeneratorと組み合わせて使用します。

### 実際のGenUI実装例

```dart
// カタログの作成
final catalog = Catalog(widgets: [
  TextWidget(),
  ButtonWidget(),
  SliderWidget(),
]);

// GenUiManagerの初期化
final genUiManager = GenUiManager(catalog: catalog);

// AI Content Generatorの設定
final contentGenerator = FirebaseAiContentGenerator(
  systemInstruction: 'UIツールを使用してユーザーに最適なUIを生成してください',
  tools: genUiManager.getTools(),
);

// 会話の開始
final conversation = GenUiConversation(
  genUiManager: genUiManager,
  contentGenerator: contentGenerator,
);
```

## ライセンス

このプロジェクトはデモンストレーション目的で作成されています。

## 貢献

改善提案やバグ報告は歓迎します。

## 参考資料

- [Flutter公式ドキュメント](https://flutter.dev)
- [flutter_deck パッケージ](https://pub.dev/packages/flutter_deck)
- [GenUI パッケージ](https://pub.dev/packages/genui)
