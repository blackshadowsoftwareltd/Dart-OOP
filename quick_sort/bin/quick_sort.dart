void main() {
  final list = [3, 5, 7, 4, 6, 1, 8, 9, 2];
  print(list);
  quickSort(list, 0, list.length - 1);
  print(list);
}

void quickSort(List<int> a, int beg, int end) {
  int loc;
  if (beg < end) {
    loc = partition(a, beg, end);
    quickSort(a, beg, loc - 1);
    quickSort(a, loc + 1, end);
  }
}

int partition(List<int> a, int l, int r) {
  int pivot = l;
  int tooBig = l;
  int tooSmall = r;
  while (tooSmall > tooBig) {
    while (a[tooBig] < a[pivot]) {
      tooBig++;
    }
    while (a[tooSmall] > a[pivot]) {
      tooSmall--;
    }
    if (tooBig < tooSmall) {
      int temp = a[tooBig];
      a[tooBig] = a[tooSmall];
      a[tooSmall] = temp;
    }
  }
  int temp = a[tooSmall];
  a[tooSmall] = a[pivot];
  a[pivot] = temp;

  pivot = tooSmall;
  return pivot;
}
