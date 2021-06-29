import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:complex/newentityfeatures/Models/fee_plan_model.dart';

import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:complex/newentityfeatures/Models/vrassignment_model.dart';
import 'package:complex/newentityfeatures/Models/CommonGenericModel.dart';
import 'package:complex/newentityfeatures/Models/user_reg_fee_collection.dart';

import '../repo/feepayment_repository.dart';

part 'feepayment_list_event.dart';
part 'feepayment_list_state.dart';
part 'feepayment_list_bloc.dart';
