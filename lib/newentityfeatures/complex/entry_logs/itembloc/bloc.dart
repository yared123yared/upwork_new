import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:complex/newentityfeatures/Models/qrcode_model.dart';
import 'package:complex/newentityfeatures/Models/entry_logs_model.dart';

import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:complex/newentityfeatures/Models/CommonGenericModel.dart';
import 'package:complex/newentityfeatures/Models/vrassignment_model.dart';
import 'package:complex/newentityfeatures/Models/assignment_model.dart';
import 'package:complex/newentityfeatures/Models/lookups.dart';
import 'package:complex/newentityfeatures/Models/offering_model.dart';
import '../repo/entrylogs_repository.dart';

part 'entrylogs_item_event.dart';
part 'entrylogs_item_state.dart';
part 'entrylogs_item_bloc.dart';
