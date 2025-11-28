import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  final data = const [
    Color(0xffFFCC80),
    Color.fromARGB(255, 140, 177, 141),
    Color.fromARGB(255, 101, 186, 255),
    Color.fromARGB(255, 255, 95, 148),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 7),
            child: NoteItem(color: data[index % data.length]),
          );
        },
      ),
    );
  }
}
