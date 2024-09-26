import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({required this.title, required this.subTitle, required this.link, required this.icon});

}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Buttons',
    subTitle: 'Kinds of buttons in flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined
  ),
  
  MenuItem(
    title: 'Cards',
    subTitle: 'Stylized container',
    link: '/cards',
    icon: Icons.credit_card
  ),
  
  MenuItem(
    title: 'Progress Indicators', 
    subTitle: 'General and controlled', 
    link: '/progress', 
    icon: Icons.refresh_rounded
  ),
  
  MenuItem(
    title: 'Snackbar and dialogues', 
    subTitle: 'On-screen indicators', 
    link: '/snackbars', 
    icon: Icons.fastfood_outlined
  ),
  
  MenuItem(
    title: 'Animated container', 
    subTitle: 'Animated stateful widget', 
    link: '/animated', 
    icon: Icons.animation
  ),
  
  MenuItem(
    title: 'Ui controls and Tiles', 
    subTitle: 'Flutter controllers', 
    link: '/ui-controls', 
    icon: Icons.control_camera_outlined
  ),
  
  MenuItem(
    title: 'App tutorial', 
    subTitle: 'How to use the app', 
    link: '/tutorial', 
    icon: Icons.notes_outlined
  ),
  
  MenuItem(
    title: 'Infinite scroll and pull', 
    subTitle: 'Infinite scrolling and pull to refresh', 
    link: '/infinite', 
    icon: Icons.list_alt_rounded
  ),
  
  MenuItem(
    title: 'Riverpod counter', 
    subTitle: 'General counter using riverpod', 
    link: '/counter', 
    icon: Icons.calculate_outlined
  ),

  MenuItem(
    title: 'Theme changer', 
    subTitle: 'Change the style of the app', 
    link: '/theme-changer', 
    icon: Icons.color_lens_outlined
  ),
];