import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lpchub/utils/colors.dart';
import 'package:lpchub/ui_components/name_and_designation_label.dart';
import 'package:lpchub/ui_components/title_and_description.dart';

class HumansOfLpc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          backgroundColor: appOrange,
          title: Center(
            child: Text('Humans Of LPC',
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 1.0),
              child: Container(
                width: double.infinity,
                height: 200.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  border: Border.all(
                    color: appOrange,
                  ),
                ),
                //Can be found in Ui_components/name_and_designation_label.dart
                child: NameAndDesignationLabel(
                  firstName: 'Dhiransh',
                  lastName: 'Saxena',
                  jobRole: 'Software Engineer',
                  companyName: 'Google',
                  jobCity: 'California',
                  jobCountry: 'US',
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Expanded(
                child: ListView(
                  children: [
                    TitleAndDescription( title: 'About', description: sampleDesc,),
                    TitleAndDescription(  title: 'In-campus progress', description: sampleDesc,),
                    TitleAndDescription( title: 'After campus placement', description: sampleDesc,),
                  ],
                ),
            ),
          ],
        ),
      ),
    );
  }
}
