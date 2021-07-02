import 'package:complex/domain/explore/explore_page_related_models/ExplorePageRelatedModels.dart';
import 'package:flutter/material.dart';

class PetCard extends StatelessWidget {
  final LimitedPetData petModel;
  const PetCard({Key key, @required this.petModel}) : super(key: key);

  void addToFavorite() {
    // TODO:
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => LimitedData.toDetailsPage(data: petModel),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Color(0x33000000),
              blurRadius: 8,
            ),
          ],
        ),
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Image.network(
                    petModel.tileimage,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            petModel.name,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            petModel.animalclass,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 6),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            petModel.breed,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            petModel.gender,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            petModel.age.toString() + 'yrs',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            '8-ltr',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 4,
              left: 4,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Text(
                  petModel.petclass,
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                        color: Colors.white,
                      ),
                ),
              ),
            ),
            Positioned(
              top: 4,
              right: 4,
              child: InkWell(
                child: Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.white,
                ),
                onTap: addToFavorite,
              ),
            ),
            Positioned(
              top: 34,
              right: 4,
              child: InkWell(
                child: Icon(
                  Icons.chat_bubble_outline_outlined,
                  color: Colors.white,
                ),
                onTap: addToFavorite,
              ),
            ),
            Positioned(
              top: 58,
              right: 4,
              child: InkWell(
                child: Icon(
                  Icons.call_outlined,
                  color: Colors.white,
                ),
                onTap: addToFavorite,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
