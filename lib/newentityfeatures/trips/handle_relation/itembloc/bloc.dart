import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:complex/newentityfeatures/trips/model/models/registered_user.dart';
import 'package:complex/newentityfeatures/trips/model/models/relation.dart';
import 'package:complex/newentityfeatures/trips/model/models/route_main_point.dart';
import 'package:complex/newentityfeatures/trips/model/models/route_trip.dart';
import 'package:complex/newentityfeatures/trips/model/models/ticket.dart';
import 'package:complex/newentityfeatures/trips/repository/repo/handle_relation_repository.dart';

import 'package:equatable/equatable.dart';

import 'package:complex/newentityfeatures/Models/CommonGenericModel.dart';
import 'package:complex/newentityfeatures/Models/vrassignment_model.dart';
import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';
import '../repo/handlerelation_repository.dart';

part 'handlerelation_item_event.dart';
part 'handlerelation_item_state.dart';
part 'handlerelation_item_bloc.dart';
