abstract class BaseServiceMapper<I, O> {
  const BaseServiceMapper();

  O mapToOutput(I? data);

  List<O> mapToListOutputs(List<I>? data) {
    return data?.map(mapToOutput).toList() ?? List.empty();
  }
}

// From Output to Entity
mixin ServiceMapperMixin<I, O> on BaseServiceMapper<I, O> {
  I mapToInput(O output);

  I? mapToNullableInput(O? output) {
    return output != null ? mapToInput(output) : null;
  }

  List<I> mapToListInputs(List<O>? outputs) {
    return mapToNullableListInputs(outputs) ?? List.empty();
  }

  List<I>? mapToNullableListInputs(List<O>? outputs) {
    return outputs?.map(mapToInput).toList();
  }
}
