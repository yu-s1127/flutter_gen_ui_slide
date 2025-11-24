import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_genui_slide/slides/catalog_item_slide.dart';
import 'package:flutter_genui_slide/slides/conversation_slide.dart';
import 'package:flutter_genui_slide/slides/genui_demo_slide.dart';
import 'package:flutter_genui_slide/slides/genui_in_gemini_slide.dart';
import 'package:flutter_genui_slide/slides/structure_genui_slide.dart';
import 'package:flutter_genui_slide/slides/surface_slide.dart';
import 'package:flutter_genui_slide/slides/what_is_genui_slide.dart';
import 'package:flutter_genui_slide/slides/who_am_i_slide.dart';
import 'package:flutter_genui_slide/slides/references_slide.dart';
import 'package:flutter_genui_slide/slides/end_slide.dart';
import 'slides/title_slide.dart';

void main() {
  runApp(const GenUiPresentationApp());
}

class GenUiPresentationApp extends StatelessWidget {
  const GenUiPresentationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterDeckApp(
      lightTheme: FlutterDeckThemeData.light().copyWith(
        textTheme: const FlutterDeckTextTheme(
          display: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
          header: TextStyle(fontSize: 60),
          title: TextStyle(fontSize: 60),
          subtitle: TextStyle(fontSize: 56),
          bodyLarge: TextStyle(fontSize: 42),
          bodyMedium: TextStyle(fontSize: 36),
          bodySmall: TextStyle(fontSize: 20),
        ),
      ),
      darkTheme: FlutterDeckThemeData.dark().copyWith(
        textTheme: const FlutterDeckTextTheme(
          display: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
          header: TextStyle(fontSize: 60),
          title: TextStyle(fontSize: 60),
          subtitle: TextStyle(fontSize: 56),
          bodyLarge: TextStyle(fontSize: 42),
          bodyMedium: TextStyle(fontSize: 36),
          bodySmall: TextStyle(fontSize: 20),
        ),
      ),

      configuration: FlutterDeckConfiguration(
        background: FlutterDeckBackgroundConfiguration(),
        footer: FlutterDeckFooterConfiguration(
          showSlideNumbers: true,
          showSocialHandle: false,
        ),
        header: FlutterDeckHeaderConfiguration(showHeader: false),
        transition: FlutterDeckTransition.fade(),
      ),
      slides: const [
        TitleSlide(),
        WhoAmISlide(),
        WhatIsGenuiSlide(),
        GenuiInGeminiSlide(),
        StructureGenuiSlide(),
        CatalogItemSlide(),
        ConversationSlide(),
        SurfaceSlide(),
        GenUiDemoSlide(),
        ReferencesSlide(),
        EndSlide(),
      ],
    );
  }
}
