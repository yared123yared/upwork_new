import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:complex/newentityfeatures/trips/model/models/route_points.dart';
import 'package:complex/newentityfeatures/trips/model/models/trip_cut.dart';
import 'package:complex/newentityfeatures/trips/model/models/trip_cut_current_status.dart';

import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:complex/newentityfeatures/Models/vrassignment_model.dart';
import 'package:complex/newentityfeatures/Models/CommonGenericModel.dart';
import '../repo/enduser_repository.dart';

part 'enduser_list_event.dart';
part 'enduser_list_state.dart';
part 'enduser_list_bloc.dart';
