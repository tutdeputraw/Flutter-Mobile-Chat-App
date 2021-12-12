part of '../../_screen.dart';

class ChatListScreenCardComponent extends StatelessWidget {
  final Messages data;

  const ChatListScreenCardComponent({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ChatListScreenController());

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () => controller.cardOnCLick(controller.getFriendId(data)),
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(
                  controller.getImageURL(data),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          controller.getFriendName(
                            controller.getFriendId(data),
                          ),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text('${data.dateTime.hour}.${data.dateTime.minute}')
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(controller.getSubtitle(data)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
