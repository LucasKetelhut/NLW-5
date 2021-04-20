import 'package:devquiz/core/core.dart';
import 'package:flutter/material.dart';

class AnswerWidget extends StatelessWidget {
  final String title;
  final bool isCorrect;
  final bool isSelected;

  const AnswerWidget({
    Key? key,
    required this.title,
    this.isCorrect = false,
    this.isSelected = false,
  }) : super(key: key);

  Color get _selectedColorRight => isCorrect ?
   AppColors.darkGreen : AppColors.darkRed;

  Color get _selectedBorderRight => isCorrect ?
   AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedColorCardRight => isCorrect ?
   AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedBorderCardRight => isCorrect ?
   AppColors.green : AppColors.red;

  TextStyle get _selectedTextStyleRight => isCorrect ?
   AppTextStyles.bodyDarkGreen : AppTextStyles.bodyDarkRed;

  IconData get _selectedIconRight => isCorrect ? Icons.check : Icons.close;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: isSelected ? _selectedColorCardRight : AppColors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.fromBorderSide(BorderSide(
              color: isSelected ? _selectedBorderCardRight : AppColors.border,
            )
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                title,
                style: isSelected ? _selectedTextStyleRight : AppTextStyles.body,
              ),
            ),
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                color: isSelected ? _selectedColorRight : AppColors.white,
                borderRadius: BorderRadius.circular(500),
                border: Border.fromBorderSide(
                  BorderSide(
                    color: isSelected ? _selectedBorderRight : AppColors.border
                  )
                )
              ),
              child: isSelected ? Icon(
                _selectedIconRight,
                size: 16,
                color: AppColors.white,
              ) : null,
            ),
          ],
        ),
      ),
    );
  }
}
