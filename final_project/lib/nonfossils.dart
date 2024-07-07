import 'package:flutter/material.dart';

class NonFossils extends StatefulWidget {
  const NonFossils({super.key});

  @override
  NonFossilsState createState() => NonFossilsState();
}

class NonFossilsState extends State<NonFossils> {
  final List<String> fossilNames = [
    "Concretions",
    "Iron",
    "Vivianite (Mineral)",
    "Bacterial Precipitate (Bacteria Poop)",
    "Quartz (Mineral)",
  ];

  final List<String> fossilDescriptions = [
    "These are rocks that form by small sand and clay grains cementing together over time. Because of this they have a rough and grainy surface texture. The can be any random shape and usually are not symmetrical. Concretions are more common than fossils at the Edelman Fossil Park.",
    "The element iron precipitates from the ground water to form these red-orange, rusty colored rocks commonly called \"Bog Iron\". The orange color forms as a result of oxidation - the same process that causes rust to form on a car.",
    "This is an iron phosphate mineral and often blue and glassy when first found. But this mineral commonly reacts with the oxygen in the air (a process called 'oxidation'; the same process by which a car rusts) to turn white and crusty.",
    "Though not technically bacteria poop, this rock is a mineral precipitate that forms from the waste of the bacteria living in the ground water at Edelman Fossil Park. It is originally tan in color and looks like a sea sponge but is hard. It can be coated with an iron precipitate that is orange in color.",
    "This mineral is clear in color when pure but often picks up trace elements that make it any color. Quartz found at Edelman Fossil Park is often white, yellow, orange, or pink but other colors can be found. The quartz preserved at this site did not form in New Jersey. Instead it was picked up by the glaciers north of here during the last Ice Age and was deposited by the melt water of the receding glaciers at the top of the quarry. It then fell down to the quarry floor where guests can collect it.",
  ];

    final List<String> fossilImages = [
    'assets/concretions.png',
    'assets/combinediron.png',
    'assets/vivianite.png',
    'assets/bacteriapoop.png',
    'assets/quartz.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nonfossilss'),
      ),
      body: ListView.builder(
        itemCount: fossilNames.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(fossilNames[index]),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text(fossilNames[index]),
                    content: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(fossilDescriptions[index]),
                          const SizedBox(height: 16),
                          Image.asset(
                            fossilImages[index],
                            width: 300,
                          ),
                        ],
                      ),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('Close'),
                      ),
                    ],
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}