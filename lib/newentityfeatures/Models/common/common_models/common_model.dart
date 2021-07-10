import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';



class UnitOccupants {
  String unitaddress;
  bool hasowner;
  bool hasresident;


}

class OccupiedUnitLookupModel {
  List<String> buildinglist;
  Map<String, List<int>> floormap;
  Map<String, List<UnitOccupants>> justunits;

  static OccupiedUnitLookupModel generteUnitLookup(List<String> occupiedresidentlist)
  {

    OccupiedUnitLookupModel oul = new OccupiedUnitLookupModel();
    oul.buildinglist =[];
    oul.floormap = new Map<String, List<int>>();
    oul.justunits  = new Map<String, List<UnitOccupants>>();
    for(String ounit in occupiedresidentlist)
      {
        List<String> abc = ounit.split('@');
        int floornum = int.parse(abc[1]);
        String junitaddress = "";
        bool isowner=false;
        bool isresident=false;
        if(abc[2].contains("_o")) {
          isowner = true;
          junitaddress = abc[2].replaceAll("_o", "");
        }
        else if(abc[2].contains("_r")){
          isresident = true;
          junitaddress = abc[2].replaceAll("_r", "");
        }
        else
          {
            junitaddress = abc[2];
          }


        String buildingfloor =  abc[0]+"@"+abc[1];
        if(!oul.buildinglist.contains(abc[0]))
          oul.buildinglist.add(abc[0]);

        if(oul.floormap.containsKey(abc[0]))
          {
            if(!oul.floormap[abc[0]].contains(floornum))
              oul.floormap[abc[0]].add(floornum);

          }
        else
          {
            oul.floormap[abc[0]]=[];
            oul.floormap[abc[0]].add(floornum);
          }

        if(oul.justunits.containsKey(buildingfloor))
        {
          UnitOccupants uo =null;
          for(var k in oul.justunits[buildingfloor])
            {
              if (junitaddress ==k.unitaddress)
                {
                  uo = k;
                  if(isowner)
                    uo.hasowner=isowner;
                  if(isresident)
                    uo.hasresident=isresident;
                  break;
                }
                if(uo ==null)
                  {
                    uo= new UnitOccupants();
                    uo.unitaddress =junitaddress;
                    uo.hasresident=isresident;
                    uo.hasowner=isowner;
                  }

            }
        }
        else
        {
          oul.justunits[buildingfloor]=[];
          UnitOccupants uo =new UnitOccupants();
          uo= new UnitOccupants();
          uo.unitaddress =junitaddress;
          uo.hasresident=isresident;
          uo.hasowner=isowner;


          oul.justunits[buildingfloor].add(uo);
        }



      }

      return oul;
  }

}


/// A class that can convert a geohash String to [Longitude, Latitude] and back.

