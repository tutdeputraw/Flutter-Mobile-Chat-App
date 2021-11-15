part of '../../screens/_screen.dart';

class ChatRoundedCornerComponent extends StatelessWidget {
  final section;

  const ChatRoundedCornerComponent({
    Key? key,
    required this.section,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 16,
          color: Colors.black87,
        ),
        Container(
          height: 16,
          decoration: BoxDecoration(
            color: ThemeData().scaffoldBackgroundColor,
            borderRadius: section == 'top'
                ? const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )
                : const BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
          ),
        ),
      ],
    );
  }
}
