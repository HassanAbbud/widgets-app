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
];