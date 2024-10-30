import 'package:flutter/material.dart';
import 'package:optifreight/utils/utils.dart';

class IconCardButton extends StatelessWidget {
  const IconCardButton({
    super.key,
    required this.icon,
    required this.title,
    required this.call2action,
    required this.onTap,
  });

  final IconData icon;
  final String title;
  final String call2action;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 250,
      child: Card(
        color: Colors.white,
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () => onTap(),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  size: 50,
                  color: AppColors.primary,
                ),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  call2action,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
