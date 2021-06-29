import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:complex/newentityfeatures/Models/qrcode_model.dart';
import 'package:complex/newentityfeatures/Models/entry_logs_model.dart';

import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:complex/newentityfeatures/Models/vrassignment_model.dart';
import 'package:complex/newentityfeatures/Models/CommonGenericModel.dart';
import '../repo/entrylogs_repository.dart';

part 'entrylogs_list_event.dart';
part 'entrylogs_list_state.dart';
part 'entrylogs_list_bloc.dart';
