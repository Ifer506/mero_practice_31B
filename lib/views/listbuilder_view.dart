import 'package:batch_31b/views/combo_view.dart';
import 'package:batch_31b/views/view_all_dumb.dart';
import 'package:flutter/material.dart';

class ListViewTest extends StatefulWidget {
  const ListViewTest({super.key});

  @override
  State<ListViewTest> createState() => _ListViewTestState();
}

class _ListViewTestState extends State<ListViewTest> {
  final TextEditingController name = TextEditingController();
  final TextEditingController thought = TextEditingController();
  final TextEditingController rating = TextEditingController();
  List<Combo> combined = [];

  final gap = const SizedBox(
    height: 10,
  );

  @override
  void dispose() {
    rating.dispose();
    thought.dispose();
    name.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View test"),
        centerTitle: true,
        elevation: 10,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  TextField(
                    controller: name,
                    decoration: const InputDecoration(
                        labelText: "Something no one hates",
                        border: OutlineInputBorder()),
                  ),
                  gap,
                  TextField(
                    controller: thought,
                    decoration: const InputDecoration(
                        labelText: "why", border: OutlineInputBorder()),
                  ),
                  gap,
                  TextField(
                    controller: rating,
                    decoration: const InputDecoration(
                        labelText: "Rating", border: OutlineInputBorder()),
                  ),
                  gap,
                  ElevatedButton(
                      onPressed: () {
                        Combo combiner = Combo(
                            thought: thought.text,
                            rating: rating.text,
                            name: name.text);

                        setState(() {
                          combined.add(combiner);
                        });
                      },
                      child: const Text("Share you stupidity")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ViewAllDumb(),
                            settings: RouteSettings(
                              arguments: combined,
                            ),
                          ),
                        );
                      },
                      child: const Text("View All the dumb things")),
                  gap,
                ],
              ),
            )),
            gap,
            Expanded(
                child: ListView.builder(
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
                    }))
          ],
        ),
      ),
    );
  }
}
