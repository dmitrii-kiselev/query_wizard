import 'package:query_wizard/domain.dart';

extension EntityList<Entity extends IEntity> on List<Entity> {
  Entity findById(String id) {
    return firstWhere((e) => e.id == id);
  }

  void update(Entity entity) {
    final source = findById(entity.id);
    final index = indexOf(source);

    removeAt(index);
    insert(index, entity);
  }
}
