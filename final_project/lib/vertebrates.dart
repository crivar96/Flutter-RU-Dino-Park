import 'package:flutter/material.dart';

class Vertebrates extends StatefulWidget {
  const Vertebrates({super.key});

  @override
  VertebratesState createState() => VertebratesState();
}

class VertebratesState extends State<Vertebrates> {
  final List<String> fossilNames = [
    "Coprolites (Fossilized Poop)",
    "Otodus obliquus (Mackerel shark)",
    "Squalicorax pristodonthus (Crow Shark)",
    "Odontaspis cuspidata (Sand Tiger Shark)",
    "Cretolamna appendiculata (Mackerel shark)",
    "Enchodus ferox (Saber-Toothed Herring)",
    "Fish Fin Spine",
    "Fish Vertebra",
    "Shark Vertebra",
  ];

  final List<String> fossilDescriptions = [
    "Fecal matter occasionally fossilizes and can provide information on prehistoric diets. At Edelman Fossil Park, multiple types of coprolites are preserved. Shark coprolites are readily identifiable from their spiral shape as a result of the spiral shaped colon of sharks. Crocodile and turtle coprolites are more cylindrical.",
    "This mackerel shark is only found in the Paleocene at Edelman Fossil Park from about 60 to 45 million years ago. It can be larger than its older relative Cretolamna appendiculata that lived during the Cretaceous Period. Modern mackerel sharks are about 10ft in length, eat smaller fish, and are still found off the north east coast of the United States. Most of what we know about this fossil species comes from fossilized teeth as the cartilaginous skeletons of sharks do not preserve well.",
    "This prehistoric shark could grow up to 15 feet. Most of what we know about this species comes from fossilized teeth as the cartilaginous skeletons of sharks do not preserve well.",
    "Modern sand tiger sharks live in coastal regions worldwide and can reach lengths of up to 11 feet. Most of what we know about this species comes from fossilized teeth as the cartilaginous skeletons of sharks do not preserve well.",
    "This mackerel shark is only found in the Cretaceous at Edelman Fossil Park. It lived from about 90 to 50 million years ago around the world and is considered one of the most successful sharks in history. It is smaller than its younger relative Otodus obliquus that lived during the Paleocene. Modern mackerel sharks are about 10 feet in length, eat smaller fish, and are still found off the north east coast of the United States. Most of what we know about this species comes from fossilized teeth as the cartilaginous skeletons of sharks do not preserve well.",
    "The saber-toothed herring was a bony fish found worldwide from 90 to 50 million years ago. At Edelman Fossil Park we most commonly find teeth of this fish. After the fish had earned its nickname, scientists discovered it was actually more closely related to salmon than herring.",
    "These spines helped hold up the dorsal fin of a fish that lived millions of years ago. Many fish species used to live in ancient New Jersey, but few can be identified by a fin spine.",
    "This is a bone from the spine of an ancient fish. It is distinguished from a shark vertebra primarily by its hour-glass shape. Many fish species used to live in ancient New Jersey, but few can be identified by vertebrae.",
    "This is a bone from the spinal column of an ancient shark. Behind a shark's teeth, vertebrae are the next most common element of to fossilize. It is distinguished from a fish vertebra primarily by its hockey puck shape. Many shark species used to live in New Jersey, but few can be identified by vertebrae.",
  ];

final List<String> fossilImages = [
    'assets/croc_coprolite.png',
    'assets/otodus_obliquus.png',
    'assets/squalicorax_pristodontus.png',
    'assets/odontaspis_cuspidate.png',
    'assets/cretolamna_appendiculata.png',
    'assets/enchodus_ferox_tooth.png',
    'assets/fish_spine.png',
    'assets/fish_vertebra.png',
    'assets/shark_vert.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vertebrates'),
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