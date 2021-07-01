import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:complex/newentityfeatures/Models/resident_model.dart';
import 'package:flutter/foundation.dart';

import '../repo/registry_repository.dart';
import 'package:equatable/equatable.dart';

import 'package:complex/newentityfeatures/Models/registry_model.dart'
    as newentityregi;
import 'package:complex/newentityfeatures/Models/resident_model.dart'
    as newentityresi;
import 'package:complex/newentityfeatures/Models/unit_model.dart';

part 'registry_item_event.dart';
part 'registry_item_state.dart';
part 'registry_item_bloc.dart';
