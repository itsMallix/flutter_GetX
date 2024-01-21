import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/getx_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/circular_reveal_clipper.dart';

class ScreenVariable extends StatelessWidget {
  const ScreenVariable({super.key});

  @override
  Widget build(BuildContext context) {
    final varController = Get.put(NumController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX Variable"),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(() {
                  return Text(
                    "${varController.number}", // rxint ke string masih aman
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  );
                }),
                Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                      ),
                      onPressed: () {
                        varController.decrementNumber();
                      },
                      child: const Text("-"),
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                      ),
                      onPressed: () {
                        varController.incrementNumber();
                      },
                      child: const Text("+"),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(() {
                  return Text(
                    "${varController.name}", // rxint ke string masih aman
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  );
                }),
                Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                      ),
                      onPressed: () {
                        varController.resetString();
                      },
                      child: const Text("Reset"),
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                      ),
                      onPressed: () {
                        varController.updateString();
                      },
                      child: const Text("Update"),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(() {
                  return Text(
                    "${varController.doubleNum.value}", // rxint ke string masih aman
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  );
                }),
                Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                      ),
                      onPressed: () {
                        varController.decrementDouble();
                      },
                      child: const Text("-"),
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                      ),
                      onPressed: () {
                        varController.incrementDouble();
                      },
                      child: const Text("+"),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(() {
                  return Text(
                    "${varController.databol}", // rxint ke string masih aman
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  );
                }),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                  ),
                  onPressed: () {
                    varController.changeBool();
                  },
                  child: const Text("Change"),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(() {
                  return Text(
                    "${varController.dataList}", // rxint ke string masih aman
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  );
                }),
                Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                      ),
                      onPressed: () {
                        varController.changeList();
                      },
                      child: const Text("change"),
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                      ),
                      onPressed: () {
                        varController.addList();
                      },
                      child: const Text("add"),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(() {
                  return Text(
                    "${varController.dataSet}", // rxint ke string masih aman
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  );
                }),
                Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                      ),
                      onPressed: () {
                        varController.changeSet();
                      },
                      child: const Text("change"),
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                      ),
                      onPressed: () {
                        varController.addSet();
                      },
                      child: const Text("add"),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Divider(thickness: 3),
            Row(
              children: [
                Expanded(
                  child: Obx(
                    () => ListTile(
                      leading: CircleAvatar(
                        child: Text("${varController.dataMap['id']}"),
                      ),
                      title: Text("${varController.dataMap['name']}"),
                      subtitle: Text("Usia : ${varController.dataMap['umur']}"),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    varController.changeMap();
                  },
                  child: const Text("Change Name"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
