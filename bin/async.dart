// Async function with single return
// Uses Future.delayed to return after n seconds
Future<void> sleep({required int seconds}) {
  return Future.delayed(Duration(seconds: seconds));
}

// Async function with multiple returns
// Return an integer value n times according to the entry
// Each consecutive return takes n seconds according to the entry
// The async* keyword allows this function to await for async calls and use
// yield keyword to return multiple times (Generator)
Stream<int> sleepLoop({required int times, required int seconds}) async* {
  for (var i = 0; i < times; i++) {
    await sleep(seconds: seconds);
    yield i;
  }
}

// Async function that uses sleep and sleepLoop printing the await time
void main(List<String> arguments) async {
  await sleep(seconds: 1);
  print('1 second');
  await for (var i in sleepLoop(times: 4, seconds: 1)) {
    print('${i + 2} seconds');
  }
  print('End');
}