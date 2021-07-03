Future<int> sumInStream(Stream<int> stream) async {
  int sum = 0;
  await for (int value in stream) {
    sum += value;
  }
  return sum;
}

Stream<int> sumStream(int n) async* {
  for (int i = 1; i <= n; i++) {
    yield i = await Future<int>.delayed(Duration(microseconds: 100), ()=>i);
  }
}

Stream<String> alarmStream(int n, int m) async* {
  for(var i =n; i>=0; i--){
    await Future.delayed(Duration(seconds: 1));
    if(i==m){
      yield 'RING RING RING!!!!';
    } else{
      yield i.toString();
    }
  }
}

Stream  stream = Stream.value(10);
Stream  streamError = Stream.error(Exception());
Stream  streamEmpty = Stream.empty();
Stream  streamFuture = Stream.fromFuture(Future.delayed(Duration(seconds: 1)));
Stream  streamPeriodic = Stream.periodic(Duration(seconds: 1),(value)=>value);


Future main() async {
  final stream = Stream<int>.fromIterable([1, 2, 3, 4]);
  //final stream2 = sumStream(4);

  //int sum = await sumInStream(stream2);
  //print(sum);
  await stream.forEach((element)=>print(element));
  await for(var event in stream){

  }
  //a.forEach((element) => print(element));
  // await for (String value in stream){
  //   print(value);
  // }
}

