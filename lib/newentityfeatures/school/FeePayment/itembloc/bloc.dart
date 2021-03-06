import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:complex/newentityfeatures/Models/fee_plan_model.dart';
import 'package:complex/newentityfeatures/Models/school_owner_model.dart';
import 'package:complex/newentityfeatures/Models/user_session_registration.dart';
import 'package:equatable/equatable.dart';

import 'package:complex/newentityfeatures/Models/user_reg_fee_collection.dart';
import 'package:flutter/foundation.dart';

import '../repo/feepayment_repository.dart';

part 'feepayment_item_event.dart';
part 'feepayment_item_state.dart';
part 'feepayment_item_bloc.dart';
