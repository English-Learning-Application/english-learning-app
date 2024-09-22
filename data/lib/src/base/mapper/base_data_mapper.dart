abstract class BaseDataMapper<R, E> {
  const BaseDataMapper();

  E mapToEntity(R? data);

  List<E> mapToListEntities(List<R>? data) {
    return data?.map(mapToEntity).toList() ?? List.empty();
  }
}

// From Entity to Data Model
mixin DataMapperMixin<R, E> on BaseDataMapper<R, E> {
  R mapToData(E entity);

  R? mapToNullableData(E? entity) {
    return entity != null ? mapToData(entity) : null;
  }

  List<R> mapToListData(List<E>? entities) {
    return mapToNullableListData(entities) ?? List.empty();
  }

  List<R>? mapToNullableListData(List<E>? entities) {
    return entities?.map(mapToData).toList();
  }
}
