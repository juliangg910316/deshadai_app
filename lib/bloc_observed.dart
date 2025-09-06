import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

class BlocObserved extends BlocObserver {
  const BlocObserved();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    Logger().i('${bloc.runtimeType} $change');
  }
}
