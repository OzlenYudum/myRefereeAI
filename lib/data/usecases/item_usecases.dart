import 'package:injectable/injectable.dart';
import 'package:myrefereeai/core/usecase.dart';
import 'package:myrefereeai/data/repositories/item_repository.dart';
import 'package:myrefereeai/data/entities/item.dart';

@singleton
class GetItemUseCase extends UseCase<List<Item>, NoParams?> {
  final ItemRepository _itemRepository;

  const GetItemUseCase({
    required ItemRepository itemRepository,
  }) : _itemRepository = itemRepository;

  @override
  Future<List<Item>> call([NoParams? params]) {
    return _itemRepository.getAllItems();
  }
}
