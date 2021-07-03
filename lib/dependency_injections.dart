import 'package:complex/data/providers/channel_provider.dart';
import 'package:complex/data/providers/complex_provider.dart';
import 'package:complex/data/providers/service_provicer.dart';
import 'package:complex/data/providers/user_provider.dart';
import 'package:complex/data/repositories/channel_repository.dart';
import 'package:complex/data/repositories/complex_repository.dart';
import 'package:complex/data/repositories/service_repository.dart';
import 'package:complex/data/repositories/user_repository.dart';
import 'package:injector/injector.dart';

import 'data/api/api_service.dart';
import 'data/providers/auth_provider.dart';
import 'data/providers/product_provider_old.dart';
import 'data/repositories/auth_repository.dart';
import 'data/repositories/product_repository.dart';

void setupDependencyInjections() async {
  Injector injector = Injector.appInstance;
  injector.registerSingleton<ApiService>(() => ApiService());

  _authProviderDI(injector);
  _authRepositoryDI(injector);
  _userProviderDI(injector);
  _userRepositoryDI(injector);
  _serviceProviderDI(injector);
  _serviceRepositoryDI(injector);
  _complexProviderDI(injector);
  _complexRepositoryDI(injector);
  _channelsProviderDI(injector);
  _channelsRepositoryDI(injector);
  _productProviderDI(injector);
  _productRepositoryDI(injector);
}

void _authProviderDI(Injector injector) {
  injector.registerDependency<AuthProvider>(() {
    var api = injector.get<ApiService>();
    return AuthProvider(api: api);
  });
}

void _authRepositoryDI(Injector injector) {
  injector.registerDependency<AuthRepository>(() {
    var userProvider = injector.get<AuthProvider>();
    return AuthRepository(authProvider: userProvider);
  });
}

void _productProviderDI(Injector injector) {
  injector.registerDependency<ProductProviderOld>(() {
    var api = injector.get<ApiService>();
    return ProductProviderOld(api: api);
  });
}

void _productRepositoryDI(Injector injector) {
  injector.registerDependency<ProductRepository>(() {
    var userProvider = injector.get<ProductProviderOld>();
    return ProductRepository(productProvider: userProvider);
  });
}

void _userProviderDI(Injector injector) {
  injector.registerDependency<UserProvider>(() {
    var api = injector.get<ApiService>();
    return UserProvider(api: api);
  });
}

void _userRepositoryDI(Injector injector) {
  injector.registerDependency<UserRepository>(() {
    var serviceRepository = injector.get<ServiceRepository>();

    return UserRepository(serviceRepository: serviceRepository);
  });
}

void _serviceProviderDI(Injector injector) {
  injector.registerDependency<ServiceProvider>(() {
    return ServiceProvider();
  });
}

void _serviceRepositoryDI(Injector injector) {
  injector.registerDependency<ServiceRepository>(() {
    var userProvider = injector.get<ServiceProvider>();
    return ServiceRepository(serviceProvider: userProvider);
  });
}

void _complexProviderDI(Injector injector) {
  injector.registerDependency<ComplexProvider>(() {
    var api = injector.get<ApiService>();
    return ComplexProvider(api: api);
  });
}

void _complexRepositoryDI(Injector injector) {
  injector.registerDependency<ComplexRepository>(() {
    var userProvider = injector.get<ComplexProvider>();
    var userRepo = injector.get<UserRepository>();
    return ComplexRepository(complexProvider: userProvider, userRepo: userRepo);
  });
}

void _channelsProviderDI(Injector injector) {
  injector.registerDependency<ChannelsProvider>(() {
    var api = injector.get<ApiService>();
    return ChannelsProvider(api);
  });
}

void _channelsRepositoryDI(Injector injector) {
  injector.registerDependency<ChannelsRepository>(() {
    var channelProvider = injector.get<ChannelsProvider>();
    return ChannelsRepository(channelProvider);
  });
}
