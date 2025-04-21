import 'package:flutter/material.dart';
/*
class LongPressFloatingActionButton extends StatelessWidget {
  final VoidCallback onTap;
 final VoidCallback? onLongPressed;
 
  const LongPressFloatingActionButton({
    required this.onTap,
    this.onLongPressed,
    Key? key,
  }) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
      return GestureDetector(
      onLongPress: onLongPressed,
      child: FloatingActionButton(
        onPressed: onTap,
      ),
    );
  }
}*/

class LongPressFloatingActionButton extends StatefulWidget {
  const LongPressFloatingActionButton({super.key});

  @override
  _LongPressFloatingActionButtonState createState() => _LongPressFloatingActionButtonState();
}

class _LongPressFloatingActionButtonState extends State<LongPressFloatingActionButton> {
  bool _showOptions = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FAB 長押しメニュー')),
      body: Stack(
        children: [
          Positioned(
            right: 16,
            bottom: 16,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                if (_showOptions) ...[
                  _buildOption(Icons.folder, 'デッキを新規作成', () {
                    print('デッキ新規作成');
                  }),
                  _buildOption(Icons.download, '共有デッキを取得', () {
                    print('共有デッキ取得');
                  }),
                  _buildOption(Icons.add, 'ノートを追加', () {
                    print('ノート追加');
                  }),
                  const SizedBox(height: 8),
                ],
                GestureDetector(
                  onLongPress: () => _toggleOptions(true),
                  onTap: () => _toggleOptions(false),
                  child: FloatingActionButton(
                    child: Icon(_showOptions ? Icons.close : Icons.menu),
                    onPressed: () => _toggleOptions(!_showOptions),
                  ),
                ),
              ],
            ),
          )
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
      _showOptions = show;
    });
  }
}