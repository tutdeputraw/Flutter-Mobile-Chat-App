part of '_widget.dart';

class SnackBarWidget {
  void showGeneralSnackBar({required context, required String text}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.all(16),
        content: Text(
          text,
          style: const TextStyle(
              // color: Colors.black87,
              ),
        ),
      ),
    );
  }
}
