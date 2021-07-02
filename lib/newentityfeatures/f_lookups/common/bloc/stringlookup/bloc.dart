import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:complex/data/api/failure/failure.dart';
import 'package:complex/domain/entity/school/lookup/lookup.dart';
import 'package:complex/newentityfeatures/f_lookups/common/repo/i_lookup_provider.dart';
import 'package:complex/newentityfeatures/f_lookups/common/repo/stringlookup/lookup_provider.dart';
import 'package:complex/newentityfeatures/f_lookups/common/repo/stringlookup/stringlookup_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
//{MODELPATHIMPORT}
//{entrybloc}
part 'stringlookup_list_event.dart';
part 'stringlookup_list_state.dart';
part 'stringlookup_list_bloc.dart';
part 'bloc.freezed.dart';
