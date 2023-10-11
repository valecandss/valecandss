import 'package:flutter/material.dart';

enum PaddingType {horizontal, vertical}

double ResponsivePadding(BuildContext context, PaddingType paddingType){
    final mediaQuery = MediaQuery.of(context);
    final width = mediaQuery.size.width;
    final height = mediaQuery.size.height;

    return paddingType == PaddingType.horizontal ?
    (width > 750
        ? width * 0.03
        : width > 600
            ? width * 0.04
            : width * 0.05) 
    : (height * 0.025);
   
}