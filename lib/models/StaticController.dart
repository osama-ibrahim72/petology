import 'dart:convert';

import 'package:http/http.dart';
import 'package:petology/models/FirstSction.dart';
import 'package:petology/models/Footer.dart';
import 'package:petology/models/HowTo.dart';
import 'package:petology/models/PetNeeds.dart';
import 'package:petology/models/SecondSection.dart';

class StaticController {
    final String error = "Sorry";
    final String firstSction =
        "https://petology.orangedigitalcenteregypt.com/static/homepage/first-section";
    final String footer =
        "https://petology.orangedigitalcenteregypt.com/static/homepage/footer";
    final String petNeeds =
        "https://petology.orangedigitalcenteregypt.com/static/homepage/pet-needs";
    final String secondSction =
        "https://petology.orangedigitalcenteregypt.com/static/homepage/second-section";
    Future<FirstSction> getFirstSction() async {
        Response firstSctionResponse = await get(Uri.parse(firstSction));
        if (firstSctionResponse.statusCode == 200) {
            var firstSctionBody = jsonDecode(firstSctionResponse.body); //list
            return FirstSction.fromJson(firstSctionBody);
        } else {
            throw Exception(error);
        }
    }

    Future<Footer> getFooter() async {
        Response footerResponse = await get(Uri.parse(footer));
        if (footerResponse.statusCode == 200) {
            var footerBody = jsonDecode(footerResponse.body); //list
            return Footer.fromJson(footerBody);
        } else {
            throw Exception(error);
        }
    }

    Future<PetNeeds> getPetNeeds() async {
        Response petNeedsResponse = await get(Uri.parse(petNeeds));
        if (petNeedsResponse.statusCode == 200) {
            var petNeedsBody = jsonDecode(petNeedsResponse.body); //list
            return PetNeeds.fromJson(petNeedsBody);
        } else {
            throw Exception(error);
        }
    }

    Future<SecondSection> getSecondSction() async {
        Response secondSctionResponse = await get(Uri.parse(secondSction));
        if (secondSctionResponse.statusCode == 200) {
            var secondSctionBody = jsonDecode(secondSctionResponse.body); //list
            return SecondSection.fromJson(secondSctionBody);
        } else {
            throw Exception(error);
        }
    }

    Future<HowTo> getHowTo(String catId) async {
        final howTo =
            "https://petology.orangedigitalcenteregypt.com/static/how-to/" + catId;
        Response howToResponse = await get(Uri.parse(howTo));
        if (howToResponse.statusCode == 200) {
            var howToBody = jsonDecode(howToResponse.body);
            return HowTo.fromJson(howToBody);
        } else {
            throw Exception(error);
        }
    }
}
