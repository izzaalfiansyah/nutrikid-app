import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:nutrikid_app/blocs/app_bloc/app_bloc.dart';
import 'package:nutrikid_app/components/app/add_measurement_dialog.dart';
import 'package:nutrikid_app/components/app_drawer.dart';
import 'package:nutrikid_app/components/logout_dialog.dart';
import 'package:nutrikid_app/gen/assets.gen.dart';
import 'package:nutrikid_app/screens/home/history/history_screen.dart';
import 'package:nutrikid_app/screens/home/home/home_screen.dart';
import 'package:nutrikid_app/screens/home/statistic_screen/statistic_screen.dart';
import 'package:nutrikid_app/shared/env.dart';
import 'package:nutrikid_app/shared/variant.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _controller = PersistentTabController();

  List<PersistentBottomNavBarItem> _navbarItems() {
    final inactiveColor = VariantColor.muted;
    final activeColor = VariantColor.primary;

    return [
      PersistentBottomNavBarItem(
        icon: const Icon(LucideIcons.home),
        title: 'Beranda',
        activeColorPrimary: activeColor,
        inactiveColorPrimary: inactiveColor,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(LucideIcons.history),
        title: 'Histori',
        activeColorPrimary: activeColor,
        inactiveColorPrimary: inactiveColor,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(LucideIcons.areaChart),
        title: 'Statistik',
        activeColorPrimary: activeColor,
        inactiveColorPrimary: inactiveColor,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(LucideIcons.user2),
        title: 'Siswa',
        activeColorPrimary: activeColor,
        inactiveColorPrimary: inactiveColor,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      bloc: Modular.get<AppBloc>(),
      builder: (context, state) {
        return Scaffold(
          drawer: AppDrawer(),
          appBar: AppBar(
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.white,
            centerTitle: true,
            title: Row(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Assets.favicon.image(width: 20),
                Text(
                  Env.APP_NAME,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: VariantColor.primary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 14),
                child: PopupMenuButton(
                  itemBuilder: (context) {
                    return [
                      PopupMenuItem(child: Text('Profil')),
                      PopupMenuItem(
                        onTap:
                            () => showDialog(
                              context: context,
                              builder: (context) => LogoutDialog(),
                            ),
                        child: Text('Logout'),
                      ),
                    ];
                  },
                  child: CircleAvatar(
                    radius: 18,
                    backgroundColor: VariantColor.muted.withAlpha(50),
                    child: Text(state.profile?.letterName ?? 'NK'),
                  ),
                ),
              ),
            ],
            toolbarHeight: kToolbarHeight + 16,
            // bottom: PreferredSize(
            //   preferredSize: Size.fromHeight(0),
            //   child: Container(height: 1.5, color: Colors.black.withAlpha(25)),
            // ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: Padding(
            padding: const EdgeInsets.only(bottom: 44),
            child: FloatingActionButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  useRootNavigator: true,
                  builder: (context) => AddMeasurementDialog(),
                );
              },
              backgroundColor: VariantColor.primary,
              foregroundColor: Colors.white,
              child: Icon(LucideIcons.plus),
            ),
          ),
          body: PersistentTabView(
            backgroundColor: Colors.white,
            context,
            controller: _controller,
            screens: [
              HomeScreen(),
              HistoryScreen(),
              StatisticScreen(),
              StatisticScreen(),
            ],
            items: _navbarItems(),
            resizeToAvoidBottomInset: true,
            hideNavigationBarWhenKeyboardAppears: true,
            padding: const EdgeInsets.only(top: 8),
            isVisible: true,
            animationSettings: const NavBarAnimationSettings(
              navBarItemAnimation: ItemAnimationSettings(
                // Navigation Bar's items animation properties.
                duration: Duration(milliseconds: 400),
                curve: Curves.ease,
              ),
              screenTransitionAnimation: ScreenTransitionAnimationSettings(
                // Screen transition animation on change of selected tab.
                animateTabTransition: true,
                duration: Duration(milliseconds: 200),
                screenTransitionAnimationType:
                    ScreenTransitionAnimationType.fadeIn,
              ),
            ),
            confineToSafeArea: true,
            navBarHeight: kBottomNavigationBarHeight,
            navBarStyle:
                NavBarStyle
                    .style6, // Choose the nav bar style with this property
          ),
        );
      },
    );
  }
}
