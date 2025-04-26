import 'package:ankipan/database/database.dart';
import 'package:flutter/material.dart';

class DriftDatabaseDebugPage extends StatefulWidget {
  final AppDatabase db;

  const DriftDatabaseDebugPage({super.key, required this.db});

  @override
  State<DriftDatabaseDebugPage> createState() => _DriftDatabaseDebugPageState();
}

class _DriftDatabaseDebugPageState extends State<DriftDatabaseDebugPage> {
  List<String> tableNames = [];
  Map<String, List<Map<String, dynamic>>> tableSchemas = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("📊 Drift DB構造ビューア")),
      body: tableNames.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: tableNames.length,
              itemBuilder: (context, index) {
                final table = tableNames[index];
                final columns = tableSchemas[table] ?? [];

                return ExpansionTile(
                  title: Text("📁 $table"),
                  children: columns.map((col) {
                    return ListTile(
                      title: Text(col['name']),
                      subtitle: Text(
                          "型: ${col['type']} / 主キー: ${col['pk']} / NULL許容: ${col['notnull'] == 0 ? 'Yes' : 'No'}"),
                    );
                  }).toList(),
                );
              },
            ),
    );
  }

  @override
  void initState() {
    super.initState();
    _loadSchema();
  }

  Future<void> _loadSchema() async {
    try {
      print("🌱 テーブル一覧取得開始");

      final tables = await widget.db
          .customSelect(
              "SELECT name FROM sqlite_master WHERE type='table' AND name NOT LIKE 'sqlite_%';")
          .get();
      print("🎯 テーブル一覧: $tables");

      tableNames = tables.map((row) => row.data['name'].toString()).toList();

      for (final table in tableNames) {
        print("🔍 $table のカラム情報取得中...");
        final columns =
            await widget.db.customSelect("PRAGMA table_info($table);").get();
        tableSchemas[table] = columns.map((c) => c.data).toList();
      }

      print("✅ テーブル情報読み込み完了");
      setState(() {});
    } catch (e, stack) {
      print("🔥 エラー発生: $e");
      print(stack);
    }
  }
}
