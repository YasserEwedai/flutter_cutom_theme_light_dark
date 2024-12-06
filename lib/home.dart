import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cutom_theme_light_dark/cubit/cubit.dart';
import 'package:flutter_cutom_theme_light_dark/cubit/states.dart';

import 'cache_helper.dart';
import 'main.dart';

class Home extends StatelessWidget {
  Home({super.key});

  List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(
      icon: Icon(
        Icons.home,
      ),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.apps,
      ),
      label: 'Categories',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.settings,
      ),
      label: 'Settings',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            // this to fix show anther color in appBar when ScrollView
            forceMaterialTransparency: true,
            title: Text('Title'),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            ],
          ),
          body: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Dark',
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        // color: Theme.of(context).colorScheme.onPrimary,
                        ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Switch(
                    // This bool value toggles the switch and type Theme.
                    value: AppCubit.get(context).isDark,
                    activeColor: Colors.deepOrange,
                    onChanged: (bool value) {
                      // This is called when the user toggles the switch.
                        AppCubit.get(context).changeAppMode(value: value);

                      // });
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Custom Theme',
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        // color: Theme.of(context).colorScheme.onPrimary,
                        ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Custom Theme',
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        // color: Theme.of(context).colorScheme.onPrimary,
                        ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(onPressed: () {}, child: const Text('button')),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Custom Theme',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        // color: Theme.of(context).colorScheme.onPrimary,
                        ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {}, child: const Text('button2')),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {}, child: const Text('button2')),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {}, child: const Text('button2')),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {}, child: const Text('button2')),
                  const SizedBox(
                    height: 20,
                  ),
                  const CircularProgressIndicator(),
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add),
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {},
            currentIndex: 1,
            items: bottomItems,
          ),
        );
      },
    );
  }
}
