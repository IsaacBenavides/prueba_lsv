import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:prueba_lsv/app/models/chemichal_elements.dart';

class DetailsPage extends StatelessWidget {
  final ChemichalElement? chemichalElement;

  const DetailsPage({Key? key, this.chemichalElement}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Scaffold(
      extendBody: true,
      body: SafeArea(
        child: Container(
          width: _size.width,
          height: _size.height,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Hero(
                tag: chemichalElement!.name!,
                child: FadeInImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(chemichalElement!.image!),
                  placeholder: AssetImage("assets/placeholder.png"),
                ),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: Container(
                  width: _size.width,
                  height: _size.height,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: BackButton(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  chemichalElement!.name!,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline1!
                                      .copyWith(
                                          fontSize: 40,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Simbolo: ",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline1!
                                          .copyWith(
                                            fontSize: 30,
                                            color: Colors.white,
                                          ),
                                    ),
                                    Text(
                                      chemichalElement!.symbol!,
                                      textAlign: TextAlign.left,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline1!
                                          .copyWith(
                                            fontSize: 30,
                                            color: Colors.white,
                                          ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Número atómico: ",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline1!
                                          .copyWith(
                                            fontSize: 25,
                                            color: Colors.white,
                                          ),
                                    ),
                                    Text(
                                      chemichalElement!.atomicNumber!
                                          .toString(),
                                      textAlign: TextAlign.left,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline1!
                                          .copyWith(
                                            fontSize: 25,
                                            color: Colors.white,
                                          ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 15),
                                Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris odio mi, lacinia quis turpis sit amet, luctus venenatis massa. Integer at nulla posuere, faucibus ante quis, maximus erat. In vulputate lorem vel cursus dictum. Suspendisse vehicula et dolor vitae pulvinar. Mauris bibendum enim at euismod fringilla. Suspendisse vel blandit odio, at rutrum nibh. Suspendisse volutpat in dui in porta. Sed rhoncus viverra rutrum. Vestibulum turpis tellus, elementum eget hendrerit eget, congue luctus ante. Curabitur interdum sit amet arcu nec pulvinar. Proin laoreet fringilla nunc vitae molestie. Etiam varius nisi enim, eu dapibus nulla semper id. Sed vehicula arcu id nunc consectetur maximus. Donec consectetur ultrices sapien. Vivamus mattis, ipsum non suscipit pulvinar, elit justo auctor est, et tempus velit velit et turpis.",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline1!
                                        .copyWith(
                                          fontSize: 14,
                                          color: Colors.white,
                                        )),
                                SizedBox(height: 15),
                                Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris odio mi, lacinia quis turpis sit amet, luctus venenatis massa. Integer at nulla posuere, faucibus ante quis, maximus erat. In vulputate lorem vel cursus dictum. Suspendisse vehicula et dolor vitae pulvinar. Mauris bibendum enim at euismod fringilla. Suspendisse vel blandit odio, at rutrum nibh. Suspendisse volutpat in dui in porta. Sed rhoncus viverra rutrum. Vestibulum turpis tellus, elementum eget hendrerit eget, congue luctus ante. Curabitur interdum sit amet arcu nec pulvinar. Proin laoreet fringilla nunc vitae molestie. Etiam varius nisi enim, eu dapibus nulla semper id. Sed vehicula arcu id nunc consectetur maximus. Donec consectetur ultrices sapien. Vivamus mattis, ipsum non suscipit pulvinar, elit justo auctor est, et tempus velit velit et turpis.",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline1!
                                        .copyWith(
                                          fontSize: 14,
                                          color: Colors.white,
                                        )),
                                SizedBox(height: 15),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
