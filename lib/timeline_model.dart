import 'package:flutter/material.dart';

enum TimelineItemPosition { left, right, random }

class TimelineModel {
  final Icon icon;
  final Color iconBackground;
  final Widget child;
  final Widget specialRightWidget;
  final TimelineItemPosition position;
  bool isFirst;
  bool isLast;
  bool isOutLined;

  TimelineModel(
    this.child, {
    this.specialRightWidget,
    this.icon,
    this.iconBackground,
    this.position = TimelineItemPosition.random,
    this.isFirst = false,
    this.isLast = false,
    this.isOutLined = false,
  });

  @override
  bool operator ==(o) {
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    final TimelineModel typedOther = o;
    return icon == typedOther.icon &&
        iconBackground == typedOther.iconBackground &&
        child == typedOther.child &&
        isFirst == typedOther.isFirst &&
        isLast == typedOther.isLast &&
        isOutLined == typedOther.isOutLined &&
        specialRightWidget == typedOther.specialRightWidget &&
        position == typedOther.position;
  }

  @override
  int get hashCode => hashValues(
        icon,
        iconBackground,
        child,
        position,
        isFirst,
        isLast,
        isOutLined,
        specialRightWidget,
      );

  TimelineModel copyWith({
    icon,
    iconBackground,
    child,
    position,
    isFirst,
    isLast,
    specialRightWidget,
  }) =>
      TimelineModel(
        child ?? this.child,
        icon: icon ?? this.icon,
        iconBackground: iconBackground ?? this.iconBackground,
        position: position ?? this.position,
        isFirst: isFirst ?? this.isFirst,
        specialRightWidget: specialRightWidget ?? this.specialRightWidget,
        isLast: isLast ?? this.isLast,
        isOutLined: isLast ?? this.isOutLined,
      );
}
