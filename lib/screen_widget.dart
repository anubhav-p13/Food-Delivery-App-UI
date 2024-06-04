import 'package:flutter/material.dart';
import 'package:food_onboarding/consts.dart';

class ScreenWidget extends StatelessWidget {
  final int index;
  const ScreenWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: bgColor,
                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(80)),
                ),
                child: Image.asset('assets/$index.png', width: 230 ,)
            )),
        Expanded(
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(titles[index],
                          style: const TextStyle(
                              fontSize: 24,
                              color: Colors.black87,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(abouts[index],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),),
                ),
                Expanded(
                  child: Container(
                  ),
                ),
              ],
            )),
      ],
    );
  }
}
