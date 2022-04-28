extension MyList<T> on List<T> {
  T? get firstOrNull => this.isEmpty ? null : this.first;

  T? firstWhereOrNull(bool Function(T element) test) {
    final list = where(test);
    return list.isEmpty ? null : list.first;
  }
}