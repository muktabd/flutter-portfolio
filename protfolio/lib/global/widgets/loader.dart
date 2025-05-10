import 'package:flutter/material.dart';

class OverlayLoadingIndicator extends StatelessWidget {
  const OverlayLoadingIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black26,
      child: Center(
        child: Container(
          height: 125,
          width: 120,
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircularProgressIndicator(),
              Text("Loading..."),
            ],
          ),
        ),
      ),
    );
  }
}
