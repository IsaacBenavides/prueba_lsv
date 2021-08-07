import 'package:flutter/material.dart';

class ChemichalElement {
  String? name;
  String? symbol;
  int? atomicNumber;
  String? image;
  Color? generalColor;

  ChemichalElement(
      {this.name,
      this.symbol,
      this.atomicNumber,
      this.image,
      this.generalColor});
}

List<ChemichalElement> chemichalElements = <ChemichalElement>[
  ChemichalElement(
      name: "Iridio",
      symbol: "Ir",
      atomicNumber: 77,
      image:
          "https://upload.wikimedia.org/wikipedia/commons/a/a8/Iridium-2.jpg",
      generalColor: Colors.white),
  ChemichalElement(
      name: "Alumino",
      symbol: "Al",
      atomicNumber: 13,
      image:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/Aluminium-4.jpg/260px-Aluminium-4.jpg"),
  ChemichalElement(
      name: "Oro",
      symbol: "Au",
      atomicNumber: 79,
      image:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/a/af/Gold_bullion_bars.jpg/800px-Gold_bullion_bars.jpg"),
  ChemichalElement(
      name: "Cobre",
      symbol: "Cu",
      atomicNumber: 29,
      image: "https://upload.wikimedia.org/wikipedia/commons/9/98/Cu%2C29.jpg"),
  ChemichalElement(
      name: "Fósforo",
      symbol: "P",
      atomicNumber: 15,
      image:
          "https://upload.wikimedia.org/wikipedia/commons/2/26/Red_phosphorus_in_a_tube_-_P_15_.jpg"),
  ChemichalElement(
      name: "Galio",
      symbol: "Ga",
      atomicNumber: 31,
      image:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Gallium_crystals.jpg/800px-Gallium_crystals.jpg"),
  ChemichalElement(
      name: "Germanio",
      symbol: "Ge",
      atomicNumber: 32,
      image:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/Germanium.jpg/800px-Germanium.jpg"),
  ChemichalElement(
      name: "Hierro",
      symbol: "Fe",
      atomicNumber: 26,
      image:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/Iron_electrolytic_and_1cm3_cube.jpg/1024px-Iron_electrolytic_and_1cm3_cube.jpg"),
  ChemichalElement(
      name: "Magnesio",
      symbol: "Mg",
      atomicNumber: 12,
      image: "https://upload.wikimedia.org/wikipedia/commons/9/97/Mg%2C12.jpg"),
  ChemichalElement(
      name: "Níquel",
      symbol: "Ni",
      atomicNumber: 28,
      image:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/Nickel_electrolytic_and_1cm3_cube.jpg/1024px-Nickel_electrolytic_and_1cm3_cube.jpg"),
];
