import 'package:flutter/material.dart';
import 'package:genui/genui.dart';
import 'package:json_schema_builder/json_schema_builder.dart';

final _schema = S.object(
  properties: {
    'question': S.string(description: 'The question part of a riddle.'),
    'answer': S.string(description: 'The answer part of a riddle.'),
  },
  required: ['question', 'answer'],
);

final riddleCard = CatalogItem(
  name: 'RiddleCard',
  dataSchema: _schema,
  widgetBuilder: (CatalogItemContext itemContext) {
    final json = itemContext.data as Map<String, Object?>;
    final question = json['question'] as String;
    final answer = json['answer'] as String;

    return Container(
      constraints: const BoxConstraints(maxWidth: 400),
      decoration: BoxDecoration(border: .all()),
      padding: const .all(16),
      child: Column(
        crossAxisAlignment: .start,
        mainAxisSize: .min,
        children: [
          Text(
            '問題: $question',
            style: Theme.of(itemContext.buildContext).textTheme.headlineMedium,
          ),
          const SizedBox(height: 8.0),
          Text(
            '答え; $answer',
            style: Theme.of(itemContext.buildContext).textTheme.headlineSmall,
          ),
        ],
      ),
    );
  },
);
