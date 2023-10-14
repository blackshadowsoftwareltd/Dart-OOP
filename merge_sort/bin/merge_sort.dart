void main() {
  List<int> list = [3, 5, 7, 4, 6, 1, 8, 9, 2];
  print(list);
  devide(list, 0, list.length - 1);
  print(list);
}

void devide(List<int> list, int f, int l) {
  if (f >= l) return;
  int mid = (f + (l - f) ~/ 2);

  devide(list, f, mid);
  devide(list, mid + 1, l);
  conquer(list, f, mid, l);
}

void conquer(List<int> list, int f, int mid, int l) {
  List<int> merged = [];
  int index1 = f, index2 = mid + 1;

  while (index1 <= mid && index2 <= l) {
    if (list[index1] <= list[index2]) {
      merged.add(list[index1]);
      index1++;
    } else {
      merged.add(list[index2]);
      index2++;
    }
  }

  while (index1 <= mid) {
    merged.add(list[index1]);
    index1++;
  }

  while (index2 <= l) {
    merged.add(list[index2]);
    index2++;
  }

  for (int i = f, j = 0; j < merged.length; i++, j++) {
    list[i] = merged[j];
  }
}
