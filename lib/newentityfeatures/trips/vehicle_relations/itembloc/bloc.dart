import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:complex/newentityfeatures/trips/model/models/registered_user.dart';
import 'package:equatable/equatable.dart';

import 'package:complex/newentityfeatures/Models/CommonGenericModel.dart';
import 'package:complex/newentityfeatures/trips/model/models/relation.dart';
import 'package:complex/newentityfeatures/trips/repository/repo/relation_repository.dart';
import 'package:flutter/foundation.dart';
import '../repo/vehiclerelation_repository.dart';

part 'vehiclerelation_item_event.dart';
part 'vehiclerelation_item_state.dart';
part 'vehiclerelation_item_bloc.dart';
