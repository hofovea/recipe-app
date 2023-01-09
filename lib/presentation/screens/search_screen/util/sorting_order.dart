enum SortingOrder { ascending, descending, notSorted }

extension SortingOrderPrettyStringify on SortingOrder {
  String get name {
    switch (this) {
      case SortingOrder.ascending:
        return 'Ascending';
      case SortingOrder.descending:
        return 'Descending';
      case SortingOrder.notSorted:
        return 'Not sorted';
    }
  }
}
