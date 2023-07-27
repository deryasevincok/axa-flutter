import 'package:flutter/material.dart';

extension ContextExtSize on BuildContext {
  double get sWidth => MediaQuery.of(this).size.width;
  double get sHeight => MediaQuery.of(this).size.height;
}

extension ContextExtDynamicSize on BuildContext {
  double dynamicWidth(double value) => MediaQuery.of(this).size.width * value;
  double dynamicHeight(double value) => MediaQuery.of(this).size.height * value;
}

extension EmptyWidget on BuildContext {
  Widget emptyWidget(double value) => SizedBox(
    height: dynamicHeight(value),
  );
}
