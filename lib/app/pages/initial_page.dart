import 'package:flutter/material.dart';
import 'package:prueba_lsv/app/general_widget/card_widget.dart';
import 'package:prueba_lsv/app/models/chemichal_elements.dart';
import 'package:prueba_lsv/app/pages/details_page.dart';

class InitialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: FittedBox(
                  child: Text(
                    "Elementos Químicos",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ),
              ),
              Expanded(
                flex: 9,
                child: ListView.builder(
                  itemCount: chemichalElements.length,
                  itemBuilder: (_, i) {
                    ChemichalElement chemichalElement = chemichalElements[i];
                    return CardWidget(
                        width: double.maxFinite,
                        height: 100,
                        externalPadding: EdgeInsets.only(bottom: 10),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    chemichalElement.name!,
                                    overflow: TextOverflow.fade,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline1!
                                        .copyWith(
                                            fontSize: 25,
                                            color: Colors.black87),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Simbolo: ",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline1!
                                            .copyWith(
                                                fontSize: 18,
                                                color: Colors.black54),
                                      ),
                                      Text(
                                        chemichalElement.symbol!,
                                        textAlign: TextAlign.left,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline1!
                                            .copyWith(
                                                fontSize: 18,
                                                color: Colors.black54),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Spacer(),
                              Container(
                                width: 80,
                                margin: EdgeInsets.symmetric(vertical: 10),
                                height: double.maxFinite,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5)),
                                child: Hero(
                                  tag: chemichalElement.name!,
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                              builder: (_) => DetailsPage(
                                                    chemichalElement:
                                                        chemichalElement,
                                                  )));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: FadeInImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                            chemichalElement.image!),
                                        placeholder: AssetImage(
                                            "assets/placeholder.png"),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
