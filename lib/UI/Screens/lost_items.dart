import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:lpchub/ui_components/lost_items_label.dart';
import 'package:lpchub/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class LostItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryAppColor,
        appBar: AppBar(
          backgroundColor: appOrange,
          title: Center(
            child: Text(
              'Lost Items',
              style: GoogleFonts.alata(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
            ),
            Expanded(
                child: ListView(
                  children: [
                    //LostItemsLabel can be found be found in ui_components/lost_items_label
                    LostItemsLabel(
                      itemName: 'Handkerchief',
                      itemColor: 'Red',
                      extraIdentity: 'Have black spots',
                      foundSpot: 'First Floor',
                    ),
                    LostItemsLabel(
                      itemName: 'Handkerchief',
                      itemColor: 'Red',
                      extraIdentity: 'Have black spots',
                      foundSpot: 'First Floor',
                    ),
                    LostItemsLabel(
                      itemName: 'Handkerchief',
                      itemColor: 'Red',
                      extraIdentity: 'Have black spots',
                      foundSpot: 'First Floor',
                    ),
                    LostItemsLabel(
                      itemName: 'Handkerchief',
                      itemColor: 'Red',
                      extraIdentity: 'Have black spots',
                      foundSpot: 'First Floor',
                    ),
                    LostItemsLabel(
                      itemName: 'Handkerchief',
                      itemColor: 'Red',
                      extraIdentity: 'Have black spots',
                      foundSpot: 'First Floor',
                    ),
                  ],
                ),
            ),
          ],
        ),
      ),
    );
  }
}
