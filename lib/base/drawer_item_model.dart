import 'package:flutter/material.dart';

import 'enums.dart';

class DrawerItem {
  final String title;
  final Widget icon;
  final DrawerItemType itemType;

  final String routeKey;
  final String? permission;
  final int order;
  final Map<String, String>? defaultParams;

  const DrawerItem({
    required this.title,
    required this.icon,
    required this.routeKey,
    this.permission,
    this.order = 0,
    this.defaultParams,
    this.itemType = DrawerItemType.Item,
  });
}

class DrawerItemModel<T> extends DrawerItem {
  @override
  final String title;
  @override
  final Widget icon;
  @override
  final String routeKey;
  @override
  final String? permission;
  @override
  final int order;
  final T callBackType;
  @override
  final Map<String, String>? defaultParams;

  const DrawerItemModel({
    required this.callBackType,
    required this.title,
    required this.icon,
    required this.routeKey,
    this.permission,
    required this.order,
    this.defaultParams,
  }) : super(
         title: title,
         icon: icon,
         routeKey: routeKey,
         itemType: DrawerItemType.Item,
       );
}

class DrawerDivider extends DrawerItem {
  @override
  final String title;
  @override
  final Widget icon;
  @override
  final String routeKey;
  @override
  final String? permission;
  @override
  final int order;

  @override
  final Map<String, String>? defaultParams;

  const DrawerDivider({
    required this.title,
    required this.icon,
    required this.routeKey,
    this.permission,
    this.order = 0,
    this.defaultParams,
  }) : super(
         title: title,
         icon: icon,
         routeKey: routeKey,
         itemType: DrawerItemType.Divider,
       );
}

class DrawerTittle extends DrawerItem {
  @override
  final String title;
  @override
  final Widget icon;
  @override
  final String routeKey;
  @override
  final String? permission;
  @override
  final int order;

  @override
  final Map<String, String>? defaultParams;

  const DrawerTittle({
    required this.title,
    required this.icon,
    required this.routeKey,

    this.permission,
    this.order = 0,
    this.defaultParams,
  }) : super(
         title: title,
         icon: icon,
         routeKey: routeKey,
         itemType: DrawerItemType.Tittle,
       );
}
