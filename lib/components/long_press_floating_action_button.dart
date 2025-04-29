import 'package:ankipan/database/database.dart';
import 'package:ankipan/debug/show_db.dart';
import 'package:flutter/material.dart';

class LongPressFloatingActionButton extends StatefulWidget {
  const LongPressFloatingActionButton({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LongPressFloatingActionButtonState createState() => _LongPressFloatingActionButtonState();
}

class _LongPressFloatingActionButtonState extends State<LongPressFloatingActionButton> {
  bool _showFABDetails = false;
  final debugDB = AppDatabase();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Positioned(
            right: 16,
            bottom: 16,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                if (_showFABDetails) ...[
                  _buildOption(Icons.folder, 'デッキを新規作成', () {}),
                  _buildOption(Icons.download, '共有デッキを取得', () {}),
                  _buildOption(Icons.add, 'ノートを追加', () {}),
                  const SizedBox(height: 8),
                ],
                GestureDetector(
                  onLongPress: () => _toggleOptions(true), // 長押しでメニュー展開
                  child: FloatingActionButton(
                    heroTag: "main-fab", // heroTagエラー防止
                    child: Icon(_showFABDetails ? Icons.close : Icons.add),
                    onPressed: () {
                      if (_showFABDetails) {
                        _toggleOptions(false);
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => DriftDatabaseDebugPage(db: debugDB),
                          ),
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOption(IconData icon, String label, VoidCallback onPressed) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(label, style: const TextStyle(color: Colors.white)),
          ),
          const SizedBox(width: 8),
          FloatingActionButton(
            heroTag: label,
            mini: true,
            onPressed: onPressed,
            child: Icon(icon),
          ),
        ],
      ),
    );
  }

  void _toggleOptions(bool show) {
    setState(() {
      _showFABDetails = show;
    });
  }
}
