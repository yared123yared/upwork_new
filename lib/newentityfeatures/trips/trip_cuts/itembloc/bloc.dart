import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:complex/newentityfeatures/trips/model/models/route_trip.dart';
import 'package:complex/newentityfeatures/trips/model/models/routes.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:complex/newentityfeatures/Models/CommonGenericModel.dart';
import 'package:complex/newentityfeatures/trips/model/models/trip_cut.dart';
import '../repo/tripcut_repository.dart';

part 'tripcut_item_event.dart';
part 'tripcut_item_state.dart';
part 'tripcut_item_bloc.dart';
