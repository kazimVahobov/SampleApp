class StoreData {
  String tag;
  String label;
  String sum;
  String currency;

  StoreData({this.tag, this.label, this.sum, this.currency});
}

final StoreData firstStore = new StoreData(
    tag: 'red',
    label: 'Compass Store Warehouse',
    sum: '25 900 000',
    currency: 'СУМ');
final StoreData secondStore = new StoreData(
    tag: 'blue',
    label: 'Compass Store Medium',
    sum: '5 320 000',
    currency: 'СУМ');
final StoreData thirdStore = new StoreData(
    tag: 'green',
    label: 'Compass Store Small',
    sum: '930 500',
    currency: 'СУМ');
final StoreData fourthStore = new StoreData(
    tag: 'red',
    label: 'Compass Store Fourth',
    sum: '25 900 000',
    currency: 'СУМ');
final StoreData fifthStore = new StoreData(
    tag: 'green',
    label: 'Compass Store Fifth',
    sum: '25 600 000',
    currency: 'СУМ');

List<StoreData> stores = [
  firstStore,
  secondStore,
  thirdStore,
  fourthStore,
  fifthStore
];
