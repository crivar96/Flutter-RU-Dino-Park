import 'package:flutter/material.dart';

class Invertebrates extends StatefulWidget {
  const Invertebrates({super.key});

  @override
  InvertebratesState createState() => InvertebratesState();
}

class InvertebratesState extends State<Invertebrates> {
  final List<String> fossilNames = [
    "Cucullaea (Clam)",
    "Crassatellites vadosus (Clam)",
    "Turritella vertebroides (Snail)",
    "Oleneothyris harlani (Brachiopod)",
    "Terebratulina atlantica (Brachiopod)",
    "Pycnodonte dissimilaris (Oysters)",
    "Gryphaeostrea vomeri (Oyster)",
    "Thalassinoides sp. Burrow",
    "Peridonella dichotoma (Sponge)",
    "Flabellum mortoni (Coral)",
  ];

  final List<String> fossilDescriptions = [
    "This genus of clam is commonly called a false ark clam and spans the Cretaceous/Paleocene extinction at Edelman Fossil Park. The former mine workers here nicknamed these fossils as ‘squirrel heads’ because of their shape. There are three species preserved at this locality: 1) Cucullaea neglecta - found in the Navesink Formation, 2) Cucullaea vulgaris - found in the lower Hornerstown Formation, and 3) Cucullaea macrodonta - found in upper Hornerstown Formation. Most guests find the common Cucullaea vulgaris. Its species name vulgaris (Latin for \"common\") refers to how frequently this fossil is found. The genus Cucullaea can still be found today and is canned in southeast Asia for human consumption. Like most invertebrate fossils preserved at Edelman Fossil Park, Cucullaea are preserved as internal casts, also known as steinkerns (German for \"stone center \")",
    "Crassatellites is the second most common clam found at Edelman Fossil Park, behind Cucullaea. Crassatellites are flatter than Cucullaea, have more pointed hinges, and smaller \"wing\" projecting behind the hinge. It is likely this clam filtered its food from the water and burrowed into the sand. Crassatellites, like most invertebrate fossils preserved at the site, are preserved as internal casts, also known as steinkerns (German for \"stone center \" )",
    "Turritella was a tall-spired snail that burrowed into the sand and filtered its food from the water. As a snail, it belongs to the class Gastropoda which means \"stomach foot\". Like most invertebrate fossils preserved at the Edelman Fossil Park, Turritella are preserved as internal casts, also known as steinkerns (German for \"stone center\")",
    "Although these fossils may look like clams, they are only distantly related. Oleneothyris belongs to the phylum Brachiopoda not Mollusca (which includes clams). The main difference between brachiopods and clams is that the former lacks symmetry about its hinge; the two valves of the shell are not identical in shape. The one hooks over the other to form the hinge. Brachiopods have existed for over 500 million years. The vast majority of brachiopods found at Edelman Fossil Park are Paleocene in age. Oleneothyris is the larger of the two brachiopod species found at Edelman Fossil Park and, like most invertebrate fossils preserved here, they are preserved as internal casts, also known as steinkerns (German for \"stone center\")",
    "Terebratulina is the smaller of the two brachiopod species found at Edelman Fossil Park. Although these fossils may look like clams they are only distantly related. Terebratulina belongs to the phylum Brachiopoda not Mollusca (which includes clams). The main difference between brachiopods and clams is that the former lacks symmetry about its hinge; the two valves of the shell are not identical in shape. The one hooks over the other to form the hinge. Brachiopods have existed for over 500 million years. The vast majority of brachiopods found at Edelman Fossil Park are Paleocene in age. Like most invertebrate fossils preserved here, they are preserved as internal casts, also known as steinkerns (German for \"stone center\")",
    "This is the only invertebrate preserved at Edelman Fossil Park that preserves as a fossil shell (not as a steinkern). Their shells have been replaced by tiny crystals of pyrite (commonly known as Fool's Gold). The pyrite crystals cause the fossil to look speckled with gold in the sunlight, especially when wet. Their shells are very fragile and are often recovered as fragments. Sometimes at Edelman Fossil Park Pycnodonte can be found preserved as an internal cast, also known as steinkern (German for \"stone center\")",
    "This is a second species of oyster found at the Edelman Fossil Park. Like other oysters, Gryphaeostrea was a filter feeder and ate tiny food particles in the water. It is shaped like a fingernail and, unlike Pycnodonte, is more common to be preserved as internal casts also known as steinkerns (German for \"stone center\") and not replaced with pyrite",
    "The sediment at the Edelman Fossil Park has been over 80% bio-turbated. This means that millions of years ago crustaceans dug burrows in the sea floor. Lobsters are the most likely taxa to have made these burrows as holes to live in. Some of these burrows have since filled and are preserved as casts or as the mud lining and remain hollow",
    "This is one of the most common fossils at Edelman Fossil Park. Sponges (Phylum: Porifera) are one of the oldest groups of multicellular animals on Earth, having evolved over 600 million years ago. They anchor themselves on the sea floor and are filter feeders. The fossils preserved at this site are usually tube like and sometimes branched. They preserve a patterned texture of very small holes, through which they circulated water to filter out bits of organic material",
    "Flabellum was a solitary horn coral unlike most colonial corals living today. As a coral, it had a symbiotic relationship with microorganisms",
  ];

  final List<String> fossilImages = [
    'assets/cucullaea_vulgaris.png',
    'assets/crassatellites_vadosus.png',
    'assets/turitella.png',
    'assets/oleneothyris_harlani.png',
    'assets/terebratulina.png',
    'assets/pycnodonte_dissimilaris.png',
    'assets/gryphaeostrea_vomer.png',
    'assets/burrow.png',
    'assets/peridonella_dichotoma.png',
    'assets/flabellum_mortoni.png',
  ];

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Invertebrates'),
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