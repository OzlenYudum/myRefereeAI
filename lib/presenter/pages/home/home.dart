import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myRefereeAI/data/states/settings/settings_event.dart';
import 'package:myRefereeAI/presenter/navigation/navigation.dart';
import 'package:myRefereeAI/presenter/themes/colors.dart';
import 'package:myRefereeAI/presenter/themes/extensions.dart';
import 'package:myRefereeAI/presenter/themes/themes/themes.dark.dart';
import 'package:myRefereeAI/presenter/widgets/app_bar.dart';
import 'package:myRefereeAI/presenter/widgets/button.dart';
import 'package:myRefereeAI/presenter/widgets/input.dart';
import 'package:myRefereeAI/presenter/widgets/keyboard.dart';
import 'package:myRefereeAI/presenter/widgets/scaffold.dart';


import '../../../data/states/settings/settings_bloc.dart';
import '../../../data/states/settings/settings_selector.dart' show SettingsThemeSelector;
import '../../themes/themes/themes.light.dart';

part 'widgets/category_card.dart';
part 'widgets/news_card.dart';
part 'sections/header.dart';
part 'sections/news.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return KeyboardDismisser(
      child: Scaffold(
        backgroundColor: context.colors.backgroundDark,
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) => [
            AppExpandableSliverAppBar(
              backgroundColor: context.colors.primary,
              title: Visibility(
                visible: innerBoxIsScrolled,
                child: const Text('Pokedex'),
              ),
              background: _HeaderSection(
                height: min(MediaQuery.sizeOf(context).height * 0.82, 582),
              ),
            ),
          ],
          body: const _NewsSection(),
        ),
      ),
    );
  }
}
