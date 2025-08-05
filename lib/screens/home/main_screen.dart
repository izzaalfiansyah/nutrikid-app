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
import 'package:nutrikid_app/screens/home/statistic/statistic_screen.dart';
import 'package:nutrikid_app/screens/home/student/student_screen.dart';
import 'package:nutrikid_app/shared/env.dart';
import 'package:nutrikid_app/shared/variant.dart';
import 'package:nutrikid_app/utils/letter_name.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final appBloc = Modular.get<AppBloc>();
  final _controller = PersistentTabController();

  @override
  void initState() {
    appBloc.add(AppEvent.loadStudent());
    super.initState();
  }

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
    return BlocListener<AppBloc, AppState>(
      bloc: appBloc,
      listenWhen:
          (previous, current) =>
              previous.alertMessage != current.alertMessage &&
              current.alertMessage.isNotEmpty,
      listener: (context, state) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(state.alertMessage)));
      },
      child: BlocBuilder<AppBloc, AppState>(
        bloc: appBloc,
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
                      child: Text(letterName(state.profile?.name ?? '')),
                    ),
                  ),
                ),
              ],
              toolbarHeight: kToolbarHeight + 16,
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
              context,
              decoration: NavBarDecoration(
                colorBehindNavBar: VariantColor.background,
              ),
              backgroundColor: Colors.white,
              controller: _controller,
              screens: [
                HomeScreen(),
                HistoryScreen(),
                StatisticScreen(),
                StudentScreen(),
              ],
              items: _navbarItems(),
              resizeToAvoidBottomInset: true,
              hideNavigationBarWhenKeyboardAppears: true,
              padding: const EdgeInsets.only(top: 8),
              isVisible: true,
              animationSettings: const NavBarAnimationSettings(
                navBarItemAnimation: ItemAnimationSettings(
                  duration: Duration(milliseconds: 400),
                  curve: Curves.ease,
                ),
                screenTransitionAnimation: ScreenTransitionAnimationSettings(
                  animateTabTransition: true,
                  duration: Duration(milliseconds: 200),
                  screenTransitionAnimationType:
                      ScreenTransitionAnimationType.slide,
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
      ),
    );
  }
}
