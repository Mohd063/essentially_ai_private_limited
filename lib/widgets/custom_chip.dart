  import 'package:flutter/material.dart';

  class CustomChip extends StatelessWidget {
    final String text;
    final bool isSelected;
    const CustomChip({super.key, required this.text, this.isSelected = false});

    @override
    Widget build(BuildContext context) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: isSelected ? Colors.blue : Colors.grey),
        ),
        child: Text(text),
      );
    }
  }

  class SearchBox extends StatelessWidget {
    const SearchBox({super.key});

    @override
    Widget build(BuildContext context) {
       return Container(
         width: 200,
        height: 32,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.grey),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          children: [
            Icon(Icons.search, size: 18, color: Colors.grey[600]),
            SizedBox(width: 8),
            Expanded(
              child: Text(
                'Search for a stock...',
                style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
          );
    }
  }
