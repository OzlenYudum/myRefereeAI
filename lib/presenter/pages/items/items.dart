import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myRefereeAI/presenter/widgets/animated_overlay.dart';
import 'package:myRefereeAI/presenter/widgets/fab.dart';
import 'package:myRefereeAI/utils/extensions/animation.dart';
import 'package:myrefereeai/presenter/widgets/loading.dart';
import 'package:myrefereeai/utils/extensions/animation.dart';
import 'package:myrefereeai/data/states/item/item_bloc.dart';
import 'package:myrefereeai/data/states/item/item_event.dart';
import 'package:myrefereeai/data/states/item/item_selector.dart';
import 'package:myrefereeai/data/states/item/item_state.dart';
import 'package:myrefereeai/presenter/modals/generation_modal.dart';
import 'package:myrefereeai/presenter/modals/search_modal.dart';
import 'package:myrefereeai/presenter/widgets/animated_overlay.dart';
import 'package:myrefereeai/presenter/widgets/app_bar.dart';
import 'package:myrefereeai/presenter/widgets/fab.dart';
import 'package:myrefereeai/presenter/widgets/scaffold.dart';
import 'package:myrefereeai/presenter/widgets/pokemon_refresh_control.dart';

import 'widgets/item_card.dart';

part 'sections/fab_menu.dart';
part 'sections/items_grid.dart';

@RoutePage()
class ItemsPage extends StatefulWidget {
  const ItemsPage({super.key});

  @override
  ItemsPageState createState() => ItemsPageState();
}

class ItemsPageState extends State<ItemsPage> {
  @override
  Widget build(BuildContext context) {
    return PokeballScaffold(
      body: const Stack(
        children: [
          _ItemGrid(),
        ],
      ),
    );
  }
}
