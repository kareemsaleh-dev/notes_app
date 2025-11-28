import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.color});

  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24, bottom: 24, left: 16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              'Flutter Tips',
              style: (GoogleFonts.poppins(fontSize: 26, color: Colors.black)),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 18),
              child: Text(
                'Build your career with kareem Saleh',
                style: (GoogleFonts.poppins(
                  fontSize: 18,
                  color: Colors.black.withValues(alpha: .6),
                )),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete, color: Colors.black, size: 40),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 32),
            child: Text(
              'november , 2025',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black.withValues(alpha: 0.6),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
