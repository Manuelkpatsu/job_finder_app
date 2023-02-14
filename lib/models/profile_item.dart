import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class ProfileItem extends Equatable {
  final IconData icon;
  final String title;
  final String info;
  final VoidCallback onTap;

  const ProfileItem({
    required this.icon,
    required this.title,
    required this.info,
    required this.onTap,
  });

  @override
  List<Object?> get props => [icon, title, info, onTap];
}
