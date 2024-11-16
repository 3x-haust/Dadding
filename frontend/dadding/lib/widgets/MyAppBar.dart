import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyAppBar extends StatelessWidget {
  final VoidCallback onNotificationPressed;
  final int currentIndex;

  const MyAppBar({
    super.key,
    required this.onNotificationPressed,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return AppBar(
          scrolledUnderElevation: 0,
          title: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'DADDING',
                  style: TextStyle(
                    color: currentIndex != 1 ? Colors.white : const Color(0xff3B6DFF),
                    fontSize: constraints.maxWidth * 0.055,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ],
          ),
          backgroundColor: currentIndex == 1 ? Colors.white : const Color(0xff3B6DFF),
          actions: [
            IconButton(
              icon: SvgPicture.asset(
                'assets/icons/notification.svg',
                width: constraints.maxWidth * 0.05, 
                height: constraints.maxWidth * 0.05,
                color: currentIndex != 1 ? Colors.white : const Color(0xff3B6DFF),
              ),
              onPressed: onNotificationPressed,
            ),
          ],
        );
      },
    );
  }
}