import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'dart:convert';
import '../models/country.dart';
import '../widgets/holidays_table.dart';
import '../models/Holiday.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String countryCode = "";
  Country selectedCountry;
  List<Country> countries = <Country>[Country('', 'Please Select Acountry')];

  _loadCountries() async {
    final response = await get('https://api.printful.com/countries');
    return json.decode(response.body);
  }

  _loadHolidays() async {
    const String api_key = "86986a776ad54cd1cc5bd1efc1e998f96bf6c804";
    final response = await get(
        'https://www.calendarindex.com/api/v1/holidays?api_key=$api_key&country=$countryCode&year=2019');
    return json.decode(response.body);
  }

  _buildCountriesFutureBuilder(BuildContext context) {
    return FutureBuilder(
      future: _loadCountries(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          for (var item in snapshot.data['result']) {
            countries.add(Country.fromJson(item));
          }

          return Center(
            child: new DropdownButton<Country>(
              value: selectedCountry,
              onChanged: (Country newValue) {
                setState(() {
                  selectedCountry = newValue;
                  countryCode = selectedCountry.code;
                });
              },
              items: countries.map((Country country) {
                return new DropdownMenuItem<Country>(
                  value: country,
                  child: new Text(
                    country.name,
                    style: new TextStyle(color: Colors.black),
                  ),
                );
              }).toList(),
            ),
          );
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }

  _buildHolidaysFutureBuilder(BuildContext context) {
    return FutureBuilder(
        future: _loadHolidays(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          }
          List<Holiday> holidays = List<Holiday>();
          if (snapshot.hasData) {
            for (var item in snapshot.data['response']['holidays']) {
              holidays.add(Holiday.fromJson(item));
            }
            if (holidays.isEmpty) {
              return Center(
                child: Text(
                  "This country not supported by the API yet",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                ),
              );
            }
            return HolidaysTable(holidays);
          } else {
            return CircularProgressIndicator();
          }
        });
  }

  @override
  void initState() {
    selectedCountry = countries[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      margin: EdgeInsets.only(top: 30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _buildCountriesFutureBuilder(context),
          SizedBox(
            height: 30.0,
          ),
          countryCode.isEmpty
              ? Container()
              : _buildHolidaysFutureBuilder(context),
        ],
      ),
    ));
  }
}
