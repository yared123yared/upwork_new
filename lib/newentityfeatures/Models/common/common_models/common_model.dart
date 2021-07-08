import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

enum DateTimeMode { DATE, TIME, DATETIME }

class UnitOccupants {
  String unitaddress;
  bool hasowner;
  bool hasresident;

}

class OccupiedUnitLookupModel {
  List<String> buildinglist;
  Map<String, List<String>> floormap;
  Map<String, List<UnitOccupants>> justunits;

  static OccupiedUnitLookupModel generteUnitLookup(List<String> occupiedresidentlist)
  {

    OccupiedUnitLookupModel oul = new OccupiedUnitLookupModel();
    oul.buildinglist =[];
    oul.floormap = new Map<String, List<String>>();
    oul.justunits  = new Map<String, List<UnitOccupants>>();
    for(String ounit in occupiedresidentlist)
      {
        List<String> abc = ounit.split('@');
        int floornum = int.parse(abc[1]);
        if(!oul.buildinglist.contains(abc[0]))
          oul.buildinglist.add(abc[0]);

        if(oul.floormap.containsKey(abc[0]))
          {
            if(!oul.floormap[abc[0]].contains(abc[1]))
              oul.floormap[abc[0]].add(abc[1]);

          }
        else
          {
            oul.floormap[abc[0]]=[];
            oul.floormap[abc[0]].add(abc[1]);
          }

        if(oul.justunits.containsKey(abc[0]))
        {
          UnitOccupants uo =null;
          for(var k in oul.justunits[abc[0]])
            {
              if (ounit.contains(k.unitaddress))
                {
                  uo = k;
                  break;
                }
                if(uo ==null)
                  {
                    uo= new UnitOccupants();
                    uo.unitaddress =ounit.replaceAll("_o", "").replaceAll("_r", "");
                    uo.hasresident=false;
                    uo.hasowner=false;
                  }

                if(abc[2].contains("_o"))
                  uo.hasowner=true;
                else
                  uo.hasresident=true;


            }
        }
        else
        {
          oul.justunits[abc[0]]=[];
          UnitOccupants uo =new UnitOccupants();
          uo.unitaddress =ounit.replaceAll("_o", "").replaceAll("_r", "");
          uo.hasresident=false;
          uo.hasowner=false;

          if(abc[2].contains("_o"))
            uo.hasowner=true;
          else
            uo.hasresident=true;

          oul.justunits[abc[0]].add(uo);
        }



      }

      return oul;
  }

}

class CommonUIHandler {
  static DateTime toDate({@required int timestamp}) =>
      DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
  static int toTimeStamp({@required DateTime dateTime}) {
    var ms = dateTime.millisecondsSinceEpoch;
    return (ms / 1000).round();
  }

  static String formattedDateToString(
      DateTime dateTimeValue, DateTimeMode dateTimeMode) {
    final dateTime = DateFormat('dd-MM-yyyy hh:mm a');
    final jusTime = DateFormat('hh:mm a');
    final justDate = DateFormat('dd-MM-yyyy');

    String _return;
    switch (dateTimeMode) {
      case DateTimeMode.DATE:
        _return = justDate.format(dateTimeValue);
        break;
      case DateTimeMode.TIME:
        _return = jusTime.format(dateTimeValue);
        break;
      case DateTimeMode.DATETIME:
        _return = dateTime.format(dateTimeValue);
        break;
    }
    return _return;
  }

  static DateTime formattedStringToDate(
      String dateTimeValue, DateTimeMode dateTimeMode) {
    final dateTime = DateFormat('dd-MM-yyyy hh:mm a');
    final jusTime = DateFormat('hh:mm a');
    final justDate = DateFormat('dd-MM-yyyy');

    DateTime _return;
    switch (dateTimeMode) {
      case DateTimeMode.DATE:
        _return = justDate.parse(dateTimeValue);
        break;
      case DateTimeMode.TIME:
        _return = jusTime.parse(dateTimeValue);
        break;
      case DateTimeMode.DATETIME:
        _return = dateTime.parse(dateTimeValue);
        break;
    }
    return _return;
  }



}
/// A class that can convert a geohash String to [Longitude, Latitude] and back.

