import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:complex/domain/entity/school/lookup/lookup.dart';
import 'package:complex/newentityfeatures/Models/fee_item_groups_model.dart';
import 'package:equatable/equatable.dart';

import 'package:complex/newentityfeatures/Models/fee_plan_model.dart';
import 'package:flutter/foundation.dart';
import '../repo/feeplan_repository.dart';

part 'feeplan_item_event.dart';
part 'feeplan_item_state.dart';
part 'feeplan_item_bloc.dart';
