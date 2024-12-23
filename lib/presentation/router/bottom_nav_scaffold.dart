import 'package:flutter/material.dart';
import 'package:flutter_fit_app/presentation/themes/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class BottomNavScaffold extends StatelessWidget {
  const BottomNavScaffold({
    super.key,
    required this.navigationShell,
  });

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          _buildBottomNavItem(
            iconPath: 'assets/icons/training.svg',
            label: 'Training',
          ),
          _buildBottomNavItem(
            iconPath: 'assets/icons/statistics.svg',
            label: 'Statistics',
          ),
          _buildBottomNavItem(
            iconPath: 'assets/icons/settings.svg',
            label: 'Settings',
          ),
        ],
        currentIndex: navigationShell.currentIndex,
        selectedItemColor: AppColors.brightGreen,
        onTap: (int index) => _onTap(context, index),
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavItem({
    required String iconPath,
    required String label,
  }) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        iconPath,
        width: 24,
        height: 24,
      ),
      label: label,
      activeIcon: SvgPicture.asset(
        iconPath,
        colorFilter: ColorFilter.mode(AppColors.brightGreen, BlendMode.srcIn),
      ),
    );
  }

  void _onTap(BuildContext context, int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }
}
