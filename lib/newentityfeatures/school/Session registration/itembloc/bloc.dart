import 'dart:async';

import 'package:bloc/bloc.dart';

import 'package:complex/newentityfeatures/Models/fee_plan_model.dart';
import 'package:complex/newentityfeatures/Models/user_session_registration.dart';
import 'package:equatable/equatable.dart';

import 'package:complex/newentityfeatures/Models/lookups.dart';
import 'package:complex/newentityfeatures/Models/offering_model.dart';
import 'package:flutter/foundation.dart';
import '../repo/sessionregistration_repository.dart';

part 'sessionregistration_item_event.dart';
part 'sessionregistration_item_state.dart';
part 'sessionregistration_item_bloc.dart';
