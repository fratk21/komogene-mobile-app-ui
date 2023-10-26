import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:komegene/BottomNavigator/viewmodel/bottomNavigatorViewmodel.dart';
import 'package:komegene/core/model/pagemodel.dart';
import 'package:komegene/core/utils/colors.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({super.key});

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  var _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentIndex);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageModel(
      body: buildSafeAreaWithPageView(
        _pageController,
      ),
      bottomNavigationBar: FlashyTabBar(
        selectedIndex: _currentIndex,
        showElevation: true,
        onItemSelected: (index) => setState(() {
          _currentIndex = index;
        }),
        items: [
          FlashyTabBarItem(
            activeColor: AppColors.primaryColor,
            icon: Icon(Icons.event),
            title: Text('Events'),
          ),
          FlashyTabBarItem(
            activeColor: AppColors.primaryColor,
            icon: Icon(Icons.search),
            title: Text('Search'),
          ),
          FlashyTabBarItem(
            activeColor: AppColors.primaryColor,
            icon: Icon(Icons.highlight),
            title: Text('Highlights'),
          ),
          FlashyTabBarItem(
            activeColor: AppColors.primaryColor,
            icon: Icon(Icons.settings),
            title: Text('Settings'),
          ),
          FlashyTabBarItem(
            activeColor: AppColors.primaryColor,
            icon: Icon(Icons.settings),
            title: Text('한국어'),
          ),
        ],
      ),
    );
  }
}
