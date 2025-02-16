import 'package:app/app.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'main_view_model_data.dart';

part 'main_view_model.freezed.dart';

@Injectable()
class MainViewModel extends BaseViewModel<MainViewModelData> {
  MainViewModel() : super(const MainViewModelData());

  void updateCurrentIndex(int index) {
    viewModelData = viewModelData.copyWith(currentIndex: index);
    notifyListeners();
  }
}
