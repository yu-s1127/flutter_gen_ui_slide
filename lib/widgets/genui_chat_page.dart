import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:genui/genui.dart';
import 'package:genui_google_generative_ai/genui_google_generative_ai.dart';

import 'riddle_card.dart';

class GenUiChatPage extends StatefulWidget {
  const GenUiChatPage({super.key, required this.title, required this.apiKey});

  final String title;
  final String apiKey;

  @override
  State<GenUiChatPage> createState() => _GenUiChatPageState();
}

class _GenUiChatPageState extends State<GenUiChatPage> {
  late final GenUiManager _genUiManager;
  late final GenUiConversation _genUiConversation;
  final _textController = TextEditingController();
  final _surfaceIds = <String>[];

  @override
  void initState() {
    super.initState();

    final catalog = CoreCatalogItems.asCatalog().copyWith([riddleCard]);

    _genUiManager = GenUiManager(catalog: catalog);

    final contentGenerator = GoogleGenerativeAiContentGenerator(
      catalog: catalog,
      systemInstruction: '''
      あなたは面白いなぞなぞを作る専門家です。私が単語を伝えるたびに、
      その単語に関連した新しいなぞなぞを表示するUIを生成してください。
      各なぞなぞには問題と答えの両方を含めてください。
      ''',
      apiKey: widget.apiKey,
    );

    _genUiConversation = GenUiConversation(
      genUiManager: _genUiManager,
      contentGenerator: contentGenerator,
      onSurfaceAdded: _onSurfaceAdded,
      onSurfaceDeleted: _onSurfaceDeleted,
    );
  }

  @override
  void dispose() {
    _textController.dispose();
    _genUiConversation.dispose();
    super.dispose();
  }

  void _sendMessage(String text) {
    if (text.trim().isEmpty) return;
    _genUiConversation.sendRequest(UserMessage.text(text));
  }

  void _onSurfaceAdded(SurfaceAdded update) {
    setState(() {
      _surfaceIds.add(update.surfaceId);
    });
  }

  void _onSurfaceDeleted(SurfaceRemoved update) {
    setState(() {
      _surfaceIds.remove(update.surfaceId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _surfaceIds.length,
              itemBuilder: (context, index) {
                final id = _surfaceIds[index];
                return GenUiSurface(
                  host: _genUiConversation.host,
                  surfaceId: id,
                );
              },
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const .symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _textController,
                      decoration: const InputDecoration(
                        hintText: 'なぞなぞの答えになるものを書いてください',
                      ),
                    ),
                  ),
                  Gap(16),
                  ElevatedButton(
                    onPressed: () {
                      _sendMessage(_textController.text);
                      _textController.clear();
                    },
                    child: const Text('送信'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
