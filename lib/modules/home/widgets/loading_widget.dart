import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadingWidget extends StatelessWidget {
  final Size size;
  const LoadingWidget({required this.size, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: 24,
      child: Shimmer.fromColors(
          baseColor: Colors.white,
          highlightColor: Colors.grey.shade300,
          child: Container(
            color: Colors.white,
          )),
    );
  }
}
