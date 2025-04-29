import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:layout/controllers/home_bottom_navigation_controller.dart';
import 'package:layout/views/simple_row_column_layout_screen.dart';
import 'package:layout/views/stack_expanded_flexible_layout_screen.dart';
import 'package:line_icons/line_icons.dart';
import '../widgets/custom_button.dart';
import 'background_image_screen.dart';
import 'gradient_background_screen.dart';


class NavigationScreen extends StatelessWidget {
  final HomeBottomNavigationController controller = Get.put(HomeBottomNavigationController());

  final List<Widget> _widgetOptions = <Widget>[
    const SimpleRowColumnLayoutScreen(),
    const StackExpandedFlexibleLayoutScreen(),
    const BackgroundImageScreen(),
    const GradientBackgroundScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Obx(() => _widgetOptions.elementAt(controller.selectedIndex.value)),
      bottomNavigationBar: Container(
        decoration:  BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.2),
            )
          ],
        ),
        child: SafeArea(
          child:Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 8),
            child:  Obx(() => GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              activeColor: Colors.teal,
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 12),
              color: Colors.black,
              tabBackgroundColor: Colors.grey[200]!,
              iconSize: 20,
              gap: 8,
              selectedIndex: controller.selectedIndex.value,
              onTabChange: controller.changePage,
              tabs: const [
                GButton(
                  icon: LineIcons.home,
                  text: 'Screen 1',
                ),
                GButton(
                  icon: LineIcons.home,
                  text: 'Screen 2',
                ),
                GButton(
                  icon:LineIcons.image,
                  text: 'Screen 3',
                ),
                GButton(
                  icon: LineIcons.home,
                  text: 'Screen 4',
                ),
              ],

            ),
          )
          ),
        )
      ),
    );
  }
}
