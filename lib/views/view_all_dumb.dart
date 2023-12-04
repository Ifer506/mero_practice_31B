import 'package:batch_31b/views/combo_view.dart';
import 'package:flutter/material.dart';

class ViewAllDumb extends StatefulWidget {
  const ViewAllDumb({super.key});

  @override
  State<ViewAllDumb> createState() => _ViewAllDumbState();
}

class _ViewAllDumbState extends State<ViewAllDumb> {
  List<Combo> combined = [];

  @override
  void didChangeDependencies() {
    final arguments = ModalRoute.of(context)?.settings.arguments;
    if (arguments is List<Combo>) {
      combined = arguments;
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("View All of the dumb thoughts"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            ListView.builder(
                itemCount: combined.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const Icon(Icons.wb_incandescent_sharp),
                    tileColor: Colors.blueGrey.shade200,

                    // subtitle: const Icon(Icons.star_sharp),
                    title: Text(combined[index].name),
                    subtitle: Text(combined[index].thought),
                    trailing: Text(combined[index].rating),
                  );
                })
          ],
        ),
      ),
    );
  }
}
