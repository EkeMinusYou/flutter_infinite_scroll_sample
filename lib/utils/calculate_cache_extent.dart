import 'package:flutter/material.dart';

double calculateCacheExtent(BuildContext context, double threshold) {
  return MediaQuery.of(context).orientation == Orientation.portrait
      ? MediaQuery.of(context).size.height * threshold
      : MediaQuery.of(context).size.width * threshold;
}
