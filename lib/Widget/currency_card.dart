import 'package:flutter/material.dart';

class CurrencyCards extends StatelessWidget {
  final String name;
  final String code;
  final String amount;
  final IconData iconData;
  final bool isInverted;

  const CurrencyCards({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.iconData,
    required this.isInverted,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: isInverted ? Colors.white : const Color(0xFF1F2123),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                name,
                style: TextStyle(
                  color: isInverted ? Colors.black : Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                children: [
                  Text(
                    amount,
                    style: TextStyle(
                      color: isInverted ? Colors.black : Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    code,
                    style: TextStyle(
                      color: isInverted ? Colors.black : Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ]),
            Transform.scale(
              scale: 2,
              child: Transform.translate(
                offset: const Offset(-5, 12),
                child: Icon(
                  iconData,
                  color: isInverted ? Colors.black : Colors.white,
                  size: 98,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
