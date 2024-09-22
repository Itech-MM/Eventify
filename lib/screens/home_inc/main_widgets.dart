import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:itech_eventify_app/states/providers/app_providers.dart';

class MainWidgets extends ConsumerStatefulWidget {
  const MainWidgets({super.key});

  @override
  _MainWidgetsState createState() => _MainWidgetsState();
}

class _MainWidgetsState extends ConsumerState<MainWidgets> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tasks = ref.watch(taskNotifierProvider);
    return Column(
      children: [
        TabBar(
          controller: tabController,
          tabs: const [
            Tab(text: 'Pending'),
            Tab(text: 'New'),
            Tab(text: 'Complete'),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: [
              // Add your content widgets here
              Container(),
              Container(),
              Container(),
            ],
          ),
        ),
      ],
    );
  }
}
