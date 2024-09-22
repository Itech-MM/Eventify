import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:itech_eventify_app/commons/extenstions/app_extenstions.dart';
import 'package:itech_eventify_app/commons/style/style.dart';
import 'package:itech_eventify_app/commons/ui/app_container.dart';
import 'package:itech_eventify_app/commons/ui/card/sweet_card.dart';
import 'package:itech_eventify_app/commons/ui/light_ui.dart';
import 'package:itech_eventify_app/screens/home_inc/main_widgets.dart';
import 'package:itech_eventify_app/states/providers/app_providers.dart';

import '../commons/constants.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final timer = ref.watch(timeProvider);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        title: const Text("Eventify"),
      ),
      body: SizedBox.expand(
        child: AppContainer(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 70,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: SweetCard(
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(timer.formatDate(stdTimeFormat),
                                          style: timeTextStyle()),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  const Text("Upcoming Events"),
                                  const Divider(
                                    // Add Divider here
                                    color: Colors.white60,
                                  ),
                                  Row(
                                    children: [
                                      const Expanded(
                                        child: SizedBox(
                                          height: 45,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 0,
                                                child: CustomCircleAvatar(
                                                    radius: 20,
                                                    backgroundColor:
                                                        Color(0xffd00fa5),
                                                    borderColor: Colors.black26,
                                                    content:
                                                        Icon(Icons.people)),
                                              ),
                                              Positioned(
                                                left: 20,
                                                child: CustomCircleAvatar(
                                                    radius: 20,
                                                    backgroundColor:
                                                        Color(0xff79dded),
                                                    borderColor: Colors.black26,
                                                    content:
                                                        Icon(Icons.people)),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(Icons.arrow_forward))
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  // Expanded(child: MainWidgets())
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
